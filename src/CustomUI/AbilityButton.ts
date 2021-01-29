import { Button } from "./Button";
import { Vector2D } from "Common/Vector2D";
import { FramePosition } from "./FramePosition";
import { TextFrameData } from "./TextFrameData";
import { StatusBarSimpleFrame } from "./StatusBarSimpleFrame";
import { ToolTipFrame } from "./ToolTipFrame";
import { StatusBarData } from "./StatusBarData";
import { Icon } from "Common/Icon";

export class IconButton extends Button {
  static readonly frameType = "GLUEBUTTON";
  static readonly inherits = "IconButtonTemplate";
  static readonly iconFrameType = "MyAbilityIconBar";
  static readonly iconFrameDisabled = "MyAbilityIconBarBackground";
  static readonly iconFrameText = "MyAbilityIconBarText";
  static readonly tooltipSize = new Vector2D(0.207, 0.05);
	

  public iconFrame: StatusBarSimpleFrame;
  public icon: Icon;
  public tooltip: ToolTipFrame;
  
  // a button that contains a statusbar background
  // and a tooltip (uses up tooltip context space)
  constructor(
    name: string, 
    owner: framehandle = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI,0),
    createContext: number = 0,
    size: Vector2D = new Vector2D(0.04, 0.04), 
    position: FramePosition,
    icon: Icon,
    tooltipTitle: string,
    tooltipValue: string,
  ) {
    super(
      name, 
      IconButton.frameType, 
      owner, 
      IconButton.inherits, 
      createContext, 
      size, 
      position, 
      new TextFrameData("", TEXT_JUSTIFY_MIDDLE, TEXT_JUSTIFY_CENTER)
    );

    this.icon = icon;

    this.iconFrame = new StatusBarSimpleFrame(
      IconButton.iconFrameType, 
      this.frameHandle, 
      createContext, 
      size,
      position, 
      new StatusBarData(100, 0, 100),
    );
    
    this.tooltip = new ToolTipFrame(
      name + "ToolTip",
      this.frameHandle,
      createContext,
      IconButton.tooltipSize,
      new FramePosition(
        FRAMEPOINT_BOTTOMRIGHT, 
        BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI,0),
        FRAMEPOINT_BOTTOMRIGHT, 
        0, 
        0.1639
      ),
      tooltipTitle, 
      tooltipValue,
    );

    this.
      setIcon(icon).
      setIconToTarget(this.frameHandle).
      setTooltip(this.tooltip.frameHandle);
  }

  public setIcon(icon: Icon): this {
    return this.setEnabled(true);
  }

  public setIconEnabled(icon: Icon): this {
    BlzFrameSetTexture(this.iconFrame.frameHandle, icon.enabled, 0, true);
    return this;
  }

  public setEnabled(enabled: boolean): this {
    let texture = enabled ? this.icon.enabled : this.icon.disabled;
    BlzFrameSetTexture(this.iconFrame.frameHandle, texture, 0, true);
    return this;
  }

  public setIconToTarget(target: framehandle): this {
    BlzFrameClearAllPoints(this.iconFrame.frameHandle);
    BlzFrameSetAllPoints(this.iconFrame.frameHandle, target);
    return this;
  }

  public setTooltip(tooltip: framehandle): this {
    BlzFrameSetTooltip(this.frameHandle, tooltip);
    return this;
  }
}