import { Timer, Unit } from "w3ts";
import { Players } from "w3ts/globals";
import { getPlayerBase } from "init";
import { BaseType, SpawnType } from "unitTypes/index";
import { Logger } from "Libs/TreeLib/Logger";

interface CfgItem {
    unitType: SpawnType;
    spawnInterval: number;
};

const configuration: Record<BaseType, CfgItem> = {
    [BaseType.Tier0]: {
        unitType: SpawnType.Footman,
        spawnInterval: 8.0
    },
};

export const initSpawnSystem = () => {
    Logger.LogDebug("initSpawnSystem")
    for (let playerId = 0; playerId < 12; playerId++) {
        let player = Players[playerId];
        let timer = new Timer();
        let base: Unit = getPlayerBase(playerId);
        let x = base.x;
        let y = base.y;
        let spawnFunc = () => {
            let config: CfgItem = configuration[base.typeId];
            if(base.isAlive) {
                new Unit(player, config.unitType, x, y, 270);
                timer.start(config.spawnInterval, false, spawnFunc);
            } else {
                Logger.LogDebug(`stopping spawn for ${playerId}`)
            }
        };
        let config: CfgItem = configuration[base.typeId];
        timer.start(config.spawnInterval, false, spawnFunc);
    }
}