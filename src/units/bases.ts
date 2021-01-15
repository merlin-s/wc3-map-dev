import { Unit } from "w3ts";
import { Players } from "w3ts/globals";
import { BaseType } from "../unitTypes/index";

export let playerBases = [] 

export const createBases = () => {
    playerBases = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11].map((i:number) => {
        const player = Players[i];
        return new Unit(player, BaseType.Tier0, player.startLocationX, player.startLocationY, 298.3)
    })
}