import { execSync } from "child_process";
import * as fs from "fs-extra";
import * as path from "path";
import { createLogger, format, transports } from "winston";
import War3MapW3i from "mdx-m3-viewer/src/parsers/w3x/w3i";
const { combine, timestamp, printf } = format;
const luamin = require('luamin');

export interface IProjectConfig {
  mapName: string;
  version: string;
  mapFolder: string;
  minifyScript: string;
  gameExecutable: string;
  outputFolder: string;
  launchArgs: string[];
  winePath?: string;
  winePrefix?: string;

}

/**
 * Load an object from a JSON file.
 * @param fname The JSON file
 */
export function loadJsonFile(fname: string) {
  try {
    return JSON.parse(fs.readFileSync(fname).toString());
  } catch (e) {
    logger.error(e.toString());
    return {};
  }
}

/**
 * Convert a Buffer to ArrayBuffer
 * @param buf
 */
export function toArrayBuffer(b: Buffer): ArrayBuffer {
  var ab = new ArrayBuffer(b.length);
  var view = new Uint8Array(ab);
  for (var i = 0; i < b.length; ++i) {
    view[i] = b[i];
  }
  return ab;
}

/**
 * Convert a ArrayBuffer to Buffer
 * @param ab
 */
export function toBuffer(ab: ArrayBuffer) {
  var buf = Buffer.alloc(ab.byteLength);
  var view = new Uint8Array(ab);
  for (var i = 0; i < buf.length; ++i) {
    buf[i] = view[i];
  }
  return buf;
}

/**
 * Recursively retrieve a list of files in a directory.
 * @param dir The path of the directory
 */
export function getFilesInDirectory(dir: string) {
  const files: string[] = [];
  fs.readdirSync(dir).forEach(file => {
    let fullPath = path.join(dir, file);
    if (fs.lstatSync(fullPath).isDirectory()) {
      const d = getFilesInDirectory(fullPath);
      for (const n of d) {
        files.push(n);
      }
    } else {
      files.push(fullPath);
    }
  });
  return files;
};

/**
 * Replaces all instances of the include directive with the contents of the specified file.
 * @param contents war3map.lua
 */
export function processScriptIncludes(contents: string) {
  const regex = /include\(([^)]+)\)/gm;
  let matches;
  while ((matches = regex.exec(contents)) !== null) {
    const filename = matches[1].replace(/"/g, "").replace(/'/g, "");
    const fileContents = fs.readFileSync(filename);
    contents = contents.substr(0, regex.lastIndex - matches[0].length) + "\n" + fileContents + "\n" + contents.substr(regex.lastIndex);
  }
  return contents;
}

/**
 *
 */
export function compileMap(config: IProjectConfig) {
  if (!config.mapFolder) {
    logger.error(`Could not find key "mapFolder" in config.json`);
    return false;
  }

  const tsLua = "./dist/tstl_output.lua";

  if (fs.existsSync(tsLua)) {
    fs.unlinkSync(tsLua);
  }

  logger.info("Transpiling TypeScript to Lua...");
  execSync('tstl -p tsconfig.json', { stdio: 'inherit' });

  if (!fs.existsSync(tsLua)) {
    logger.error(`Could not find "${tsLua}"`);
    return false;
  }

  logger.info(`Building "${config.mapFolder}"...`);
  fs.copySync(`./maps/${config.mapFolder}`, `./dist/${config.mapFolder}`);

  // Merge the TSTL output with war3map.lua
  const mapLua = `./dist/${config.mapFolder}/war3map.lua`;

  if (!fs.existsSync(mapLua)) {
    logger.error(`Could not find "${mapLua}"`);
    return false;
  }

  try {
    let contents = fs.readFileSync(mapLua).toString() + fs.readFileSync(tsLua).toString();
    contents = processScriptIncludes(contents);

    if (config.minifyScript) {
      logger.info(`Minifying script...`);
      contents = luamin.minify(contents.toString());
    }
    //contents = luamin.minify(contents);
    fs.writeFileSync(mapLua, contents);
  } catch (err) {
    logger.error(err.toString());
    return false;
  }

  return true;
}

/**
 * Formatter for log messages.
 */
const loggerFormatFunc = printf(({ level, message, timestamp }) => {
  return `[${timestamp.replace("T", " ").split(".")[0]}] ${level}: ${message}`;
});

/**
 * The logger object.
 */
export const logger = createLogger({
  transports: [
    new transports.Console({
      format: combine(
        format.colorize(),
        timestamp(),
        loggerFormatFunc
      ),
    }),
    new transports.File({
      filename: "project.log",
      format: combine(
        timestamp(),
        loggerFormatFunc
      ),
    }),
  ]
});

export function setMapName(w3iFilePath: string, config: IProjectConfig) {
  let mapName = `${config.mapName} v${config.version}`;
  logger.info("Updating name");
  if (!w3iFilePath) throw Error("w3i not found");

  const buffer = fs.readFileSync(w3iFilePath);
  if (!buffer) throw Error("reading w3i file failed");

  let w3iBuffer = toArrayBuffer(buffer);

  const w3i = new War3MapW3i.File(w3iBuffer);

  w3i.name = mapName;
  w3i.loadingScreenTitle = mapName;
  w3i.loadingScreenSubtitle = mapName;
  w3i.loadingScreenText = mapName;

  w3iBuffer = w3i.save();
  fs.writeFileSync(w3iFilePath, toBuffer(w3iBuffer));
  return mapName
}