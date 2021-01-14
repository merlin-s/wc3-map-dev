import * as fs from "fs-extra";
import * as path from "path";
import War3Map from "mdx-m3-viewer/src/parsers/w3x/map";
import War3MapW3i from "mdx-m3-viewer/src/parsers/w3x/w3i";
import { compileMap, getFilesInDirectory, loadJsonFile, logger, toArrayBuffer, IProjectConfig, toBuffer } from "./utils";

function main() {
  const config: IProjectConfig = loadJsonFile("config.json");
  const result = compileMap(config);

  if (!result) {
    logger.error(`Failed to compile map.`);
    return;
  }

  logger.info(`Creating w3x archive...`);
  if (!fs.existsSync(config.outputFolder)) {
    fs.mkdirSync(config.outputFolder);
  }

  createMapFromDir(
    `${config.outputFolder}/${config.mapFolder}`, 
    `./dist/${config.mapFolder}`,
    config
    );
}

/**
 * Creates a w3x archive from a directory
 * @param output The output filename
 * @param dir The directory to create the archive from
 */
export function createMapFromDir(output: string, dir: string, config: IProjectConfig) {
  const map = new War3Map();
  const files = getFilesInDirectory(dir);

  const fullMapName = `${config.mapName} v${config.version}`;
  map.name = fullMapName;

  updateNameInW3i(
    files.find(filename => filename.indexOf(".w3i") >= 0), 
    map.name
  );

  map.archive.resizeHashtable(files.length);

  for (const fileName of files) {
    const contents = toArrayBuffer(fs.readFileSync(fileName));
    const archivePath = path.relative(dir, fileName);
    const imported = map.import(archivePath, contents);

    if (!imported) {
      logger.warn("Failed to import " + archivePath);
      continue;
    }
  }

  const result = map.save();

  if (!result) {
    logger.error("Failed to save archive.");
    return;
  }

  fs.writeFileSync(output, new Uint8Array(result));

  logger.info("Finished!");
}


function updateNameInW3i(w3iFilePath: string, mapName: string) {
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
}

main();