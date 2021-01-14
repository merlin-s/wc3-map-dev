import * as fs from "fs-extra";
import * as path from "path";
import War3Map from "mdx-m3-viewer/src/parsers/w3x/map";
import { compileMap, getFilesInDirectory, loadJsonFile, logger, toArrayBuffer, IProjectConfig, setMapName } from "./utils";

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
export function createMapFromDir(output: string, mapDir: string, config: IProjectConfig) {
  const map = new War3Map();
  const files = getFilesInDirectory(mapDir);

  map.name = setMapName(
    path.join(mapDir, 'war3map.w3i'),
    config
  );

  map.archive.resizeHashtable(files.length);

  for (const fileName of files) {
    const contents = toArrayBuffer(fs.readFileSync(fileName));
    const archivePath = path.relative(mapDir, fileName);
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

main();