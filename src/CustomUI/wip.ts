import { TextFrame } from './TextFrame';
import { FramePosition } from './FramePosition';
import { Vector2D } from 'Common/Vector2D';
import { TextFrameData } from './TextFrameData';
import { Backdrop } from './Backdrop';
import { Button } from './Button';
import { FrameTrigger } from './FrameTrigger';
import { Colorizer } from 'Common/Colorizer';
import { SliderData } from './SliderData';
import { Timer } from 'w3ts';
import { ButtonMenu } from './ButtonMenu';
import { BasicButton } from './BasicButton';
import { BasicTitledSlider } from './BasicTitledSlider';
import { StatusBar } from './StatusBar';
import { StatusBarData } from './StatusBarData';
import { TextureData } from './TextureData';
import { HPBar } from './HPBar';
import { MPBar } from './MPBar';
import { LevelBar } from './LevelBar';
import { ToolTipFrame } from './ToolTipFrame';
import { StatusBarSimpleFrame } from './StatusBarSimpleFrame';
import { IconButton } from './AbilityButton';
import { Icon } from 'Common/Icon';
import { AbilityButtonHotbar } from './AbilityButtonHotbar';
import { FrameHelper } from 'Common/FrameHelper';
import { Constants } from 'Common/Constants';
import { Logger } from 'Libs/TreeLib/Logger';
import { BasicTitledBackdrop } from './BasicTitledBackdrop';
import { BasicTextFrame } from './BasicTextFrame';


// need to add promise + error catching
function LoadToc(path: string): boolean {
	const loaded = BlzLoadTOCFile(path);
	if(loaded) {
		Logger.LogDebug("Loaded: " + path);
	} else {
		Logger.LogDebug("Failed to load: " + path);
	}
	return loaded;
}

// perhaps a map of all ui elements, instead of these globals
let mainMenu: ButtonMenu;
const buttonMenus: Map<String, ButtonMenu> = new Map();

export function ui() {
	Logger.LogDebug("Setting up Custom UI ... ");

	let loaded = LoadToc("CustomUI\\templates.toc");
	
    const grandpa = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI,0);
    
    const abilityHotBar = new AbilityButtonHotbar(
    "abilityButtonHotBar", 
    grandpa,
    0,
    new Vector2D(0.04 * (Constants.maxSubAbilities) + 0.003, 0.08),
    new FramePosition(FRAMEPOINT_BOTTOM, grandpa, FRAMEPOINT_BOTTOM, 0, 0.16),
)

for (let i = 0; i < Constants.maxSubAbilities*2; ++i) {
    let heroId = FourCC('hpal')
    let icon = new Icon(
        BlzGetAbilityIcon(heroId)
    )
    const abilityButton = new IconButton(
        "abilityButton" + i,
        abilityHotBar.frameHandle, 
        i,
        new Vector2D(0.04, 0.04), 
        new FramePosition(FRAMEPOINT_CENTER, grandpa, FRAMEPOINT_CENTER, i*0.04, 0), 
        icon,
        BlzGetAbilityTooltip(heroId, 0),
        BlzGetAbilityExtendedTooltip(heroId, 0)
    );
    
    const abilityButtonTrigger = new FrameTrigger();
    abilityButtonTrigger.registerFrameEvent(abilityButton.frameHandle, FRAMEEVENT_CONTROL_CLICK);
    abilityButtonTrigger.addAction(() => {
        if (GetTriggerPlayer() == GetLocalPlayer()) {
            abilityButton.setEnabled(false)
            FrameHelper.loseFocusFromTriggeringFrame();
        }
    });
    
    
    BlzFrameSetText(BlzGetFrameByName("MyAbilityIconBarText", i), "");

    abilityHotBar.addButton(abilityButton);
}

abilityHotBar.autoAlignButtonPositions();
}