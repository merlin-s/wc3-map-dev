import { FramePosition } from './FramePosition';
import { Vector2D } from 'Common/Vector2D';
import { FrameTrigger } from './FrameTrigger';
import { IconButton } from './AbilityButton';
import { Icon } from 'Common/Icon';
import { AbilityButtonHotbar } from './AbilityButtonHotbar';
import { FrameHelper } from 'Common/FrameHelper';
import { Constants } from 'Common/Constants';
import { Logger } from 'Libs/TreeLib/Logger';


import { HeroTypes } from '../unitTypes/index';
import { Timer } from 'w3ts/index';


// need to add promise + error catching
function LoadToc(path: string): boolean {
    const loaded = BlzLoadTOCFile(path);
    if (loaded) {
        Logger.LogDebug("Loaded: " + path);
    } else {
        Logger.LogDebug("Failed to load: " + path);
    }
    return loaded;
}

// perhaps a map of all ui elements, instead of these globals

export function ui() {
    Logger.LogDebug("Setting up Custom UI ... ");

    LoadToc("CustomUI\\templates.toc");


    const grandpa = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0);

    const chatButtonHandle = BlzGetFrameByName("UpperButtonBarChatButton", 0);

    const abilityHotBar = new AbilityButtonHotbar(
        "buttonHotBar",
        grandpa,
        0,
        new Vector2D(0.04 * 4 + 0.003, 0.016),
        new FramePosition(FRAMEPOINT_BOTTOM, chatButtonHandle, FRAMEPOINT_BOTTOM, 0, -0.04),
    )

    let i = 0;
    for (let heroId of HeroTypes) {

        heroId = heroId as number;
        let icon = new Icon(
            BlzGetAbilityIcon(heroId)
        )

        const button = new IconButton(
            "button" + i,
            abilityHotBar.frameHandle,
            i,
            new Vector2D(0.04, 0.04),
            new FramePosition(FRAMEPOINT_CENTER, grandpa, FRAMEPOINT_CENTER, i * 0.04, 0),
            icon,
            BlzGetAbilityTooltip(heroId, 0),
            BlzGetAbilityExtendedTooltip(heroId, 0)
        );

        const buttonTrigger = new FrameTrigger();
        buttonTrigger.registerFrameEvent(button.frameHandle, FRAMEEVENT_CONTROL_CLICK);
        buttonTrigger.addAction(() => {
            if (GetTriggerPlayer() == GetLocalPlayer()) {
                FrameHelper.loseFocusFromTriggeringFrame();
            }
            buttonTrigger.destroy();
            let t = new Timer().start(0.05, false, () => {
                button.setEnabled(false);
                t.destroy();
            })
        });


        BlzFrameSetText(BlzGetFrameByName("MyAbilityIconBarText", i), "");

        abilityHotBar.addButton(button);
        i = i + 1;
    }


    abilityHotBar.autoAlignButtonPositions();
}