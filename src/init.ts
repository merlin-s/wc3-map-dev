import { MapPlayer, Unit } from "w3ts";
import { Players } from "w3ts/globals";
import { BaseType } from "unitTypes/index";
import { Logger } from "Libs/TreeLib/Logger";

let playerBases : Unit[] = null;

let players : MapPlayer[] = []

const makeVisible = (p : MapPlayer, r : rect) => {
    let f = CreateFogModifierRect(p.handle, FOG_OF_WAR_VISIBLE, r, true, false);
    FogModifierStart(f);
    return f;
}

export const getPlayerBase = (player: number) => {
    return playerBases[player];
}

export const setupPlayers = () => {
    let playerIds = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
    Logger.LogDebug("setupPlayers: Bases")
    playerBases = playerIds.map((pid) => {
        Logger.LogDebug(`setupPlayer: ${pid}`)
        const player = Players[pid];
        return new Unit(player, BaseType.Tier0, player.startLocationX, player.startLocationY, 298.3);
    });
    players = Players.slice(0, 12);
    Logger.LogDebug("setupPlayers: Visibility")
    for(let p of players) {
        makeVisible(p, gg_rct_MidArea);
        makeVisible(p, gg_rct_Tavern);
    }
}