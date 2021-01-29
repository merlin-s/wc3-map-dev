import { addScriptHook, W3TS_HOOK } from "w3ts/hooks";
import { initSpawnSystem } from "spawning";
import { setupPlayers } from "init";
import { CameraZoom } from 'Common/CameraZoom';
import { Logger } from "Libs/TreeLib/Logger";
import { ui } from "CustomUI/wip"

const BUILD_DATE = compiletime(() => new Date().toUTCString());

function tsMain() {
  Logger.LogDebug(`map build date: ${BUILD_DATE}`);
  setupPlayers();
  CameraZoom.onInit();
  Logger.LogDebug(`foo`)
  initSpawnSystem();
  ui();
  Logger.LogDebug("tsMain: done");
}

addScriptHook(W3TS_HOOK.MAIN_AFTER, tsMain);