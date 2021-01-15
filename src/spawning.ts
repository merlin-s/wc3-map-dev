import { Timer, Unit } from "w3ts";
import { Players } from "w3ts/globals";
import { playerBases } from "units/bases";
import { BaseType, SpawnType } from "unitTypes/index";


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
    for (let playerId = 0; playerId < 12; playerId++) {
        let player = Players[playerId];
        let timer = new Timer();
        let base: Unit = playerBases[playerId];
        let x = base.x;
        let y = base.y;
        let spawnFunc = () => {
            let config: CfgItem = configuration[base.typeId];
            if(base.isAlive) {
                new Unit(player, config.unitType, x, y, 270);
                timer.start(config.spawnInterval, false, spawnFunc);
            }
        };
        let config: CfgItem = configuration[base.typeId];
        timer.start(config.spawnInterval, false, spawnFunc);
    }
}