import {execFile, execSync} from "child_process";
import {loadJsonFile, logger, compileMap, IProjectConfig, setMapName} from "./utils";
import * as path from "path";

function main() {
  const config: IProjectConfig = loadJsonFile("config.json");
  const result = compileMap(config);

  if (!result) {
    logger.error(`Failed to compile map.`);
    return;
  }

  const cwd = process.cwd();
  const mapDir = `${cwd}/dist/${config.mapFolder}`;

  setMapName(
    path.join(mapDir, 'war3map.w3i'),
    config
  );

  logger.info(`Launching map "${mapDir.replace(/\\/g, "/")}"...`);

  if(config.winePath) {
    const wineFilename = `"Z:${mapDir}"`
    const prefix = config.winePrefix ? `WINEPREFIX=${config.winePrefix}` : ''
    execSync(`${prefix} ${config.winePath} "${config.gameExecutable}" ${["-loadfile", wineFilename, ...config.launchArgs].join(' ')}`, { stdio: 'ignore' });
  } else {
    execFile(config.gameExecutable, ["-loadfile", mapDir, ...config.launchArgs], (err: any) => {
      if (err && err.code === 'ENOENT') {
        logger.error(`No such file or directory "${config.gameExecutable}". Make sure gameExecutable is configured properly in config.json.`);
      }
    });
  }
}

main();
