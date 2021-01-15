import { addScriptHook, W3TS_HOOK } from "w3ts/hooks";
import { Players } from "w3ts/globals";
import { initSpawnSystem } from "spawning";
import { createBases } from "units/bases";

const BUILD_DATE = compiletime(() => new Date().toUTCString());
const TS_VERSION = compiletime(() => require("typescript").version);
const TSTL_VERSION = compiletime(() => require("typescript-to-lua").version);

function tsMain() {
  print(`Build: ${BUILD_DATE}, TS v${TS_VERSION}, TSTL v${TSTL_VERSION}`);
  createBases();
  initSpawnSystem();
}

addScriptHook(W3TS_HOOK.MAIN_AFTER, tsMain);