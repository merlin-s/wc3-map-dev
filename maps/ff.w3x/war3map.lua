gg_rct_MidArea = nil
gg_rct_Tavern = nil
gg_rct_Shop_T1 = nil
gg_rct_Shop_T2 = nil
gg_rct_Shop_T3 = nil
gg_rct_Shop_T4 = nil
gg_trg_Untitled_Trigger_001 = nil
function InitGlobals()
end

function CreateBuildingsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -2240.0, 2752.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -3008.0, 1984.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2773.0, -172.2, 263.580, FourCC("ewsp"))
    u = BlzCreateUnitWithSkin(p, FourCC("ndog"), -2907.4, 2658.5, 178.870, FourCC("ndog"))
    SetUnitColor(u, ConvertPlayerColor(0))
end

function CreateBuildingsForPlayer1()
    local p = Player(1)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -1728.0, 2752.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -1216.0, 2752.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer1()
    local p = Player(1)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2720.1, -142.7, 350.420, FourCC("ewsp"))
end

function CreateBuildingsForPlayer2()
    local p = Player(2)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -3008.0, 1472.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -3008.0, 960.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer2()
    local p = Player(2)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2796.4, -217.4, 0.160, FourCC("ewsp"))
end

function CreateBuildingsForPlayer3()
    local p = Player(3)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 2240.0, 2752.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 3008.0, 1984.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer3()
    local p = Player(3)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2605.8, -168.2, 207.710, FourCC("ewsp"))
    u = BlzCreateUnitWithSkin(p, FourCC("nvul"), 2913.2, 2654.8, 324.630, FourCC("nvul"))
    SetUnitColor(u, ConvertPlayerColor(3))
end

function CreateBuildingsForPlayer4()
    local p = Player(4)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 3008.0, 1472.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 3008.0, 960.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer4()
    local p = Player(4)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2575.6, -219.2, 55.830, FourCC("ewsp"))
end

function CreateBuildingsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 1728.0, 2752.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 1216.0, 2752.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2657.0, -139.7, 335.150, FourCC("ewsp"))
end

function CreateBuildingsForPlayer6()
    local p = Player(6)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -3008.0, -2496.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -2240.0, -3264.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer6()
    local p = Player(6)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2604.0, -336.6, 263.580, FourCC("ewsp"))
    u = BlzCreateUnitWithSkin(p, FourCC("nfbr"), -2895.0, -3163.6, 240.330, FourCC("nfbr"))
    SetUnitColor(u, ConvertPlayerColor(9))
end

function CreateBuildingsForPlayer7()
    local p = Player(7)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -3008.0, -1472.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -3008.0, -1984.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer7()
    local p = Player(7)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2577.3, -283.0, 350.420, FourCC("ewsp"))
end

function CreateBuildingsForPlayer8()
    local p = Player(8)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -1728.0, -3264.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), -1216.0, -3264.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer8()
    local p = Player(8)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2656.5, -366.8, 0.160, FourCC("ewsp"))
end

function CreateBuildingsForPlayer9()
    local p = Player(9)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 3008.0, -2496.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 2240.0, -3264.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer9()
    local p = Player(9)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2801.0, -279.4, 207.710, FourCC("ewsp"))
    u = BlzCreateUnitWithSkin(p, FourCC("nfro"), 2908.5, -3182.3, 346.760, FourCC("nfro"))
    SetUnitColor(u, ConvertPlayerColor(6))
end

function CreateBuildingsForPlayer10()
    local p = Player(10)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 3008.0, -1472.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 3008.0, -1984.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer10()
    local p = Player(10)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2772.3, -332.9, 55.830, FourCC("ewsp"))
end

function CreateBuildingsForPlayer11()
    local p = Player(11)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 1216.0, -3264.0, 270.000, FourCC("hwtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hwtw"), 1728.0, -3264.0, 270.000, FourCC("hwtw"))
end

function CreateUnitsForPlayer11()
    local p = Player(11)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ewsp"), -2722.3, -362.9, 335.150, FourCC("ewsp"))
end

function CreateNeutralPassiveBuildings()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("n002"), -2368.0, 0.0, 270.000, FourCC("n002"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), 0.0, -256.0, 270.000, FourCC("n000"))
    u = BlzCreateUnitWithSkin(p, FourCC("n007"), -3264.0, -3392.0, 270.000, FourCC("n007"))
    u = BlzCreateUnitWithSkin(p, FourCC("n003"), -2944.0, 0.0, 270.000, FourCC("n003"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("n012"), -3264.0, -3520.0, 270.000, FourCC("n012"))
    u = BlzCreateUnitWithSkin(p, FourCC("n00R"), -3264.0, -3264.0, 270.000, FourCC("n00R"))
    SetUnitColor(u, ConvertPlayerColor(10))
    u = BlzCreateUnitWithSkin(p, FourCC("n00R"), -3264.0, 2752.0, 270.000, FourCC("n00R"))
    SetUnitColor(u, ConvertPlayerColor(10))
    u = BlzCreateUnitWithSkin(p, FourCC("n007"), 3264.0, -3392.0, 270.000, FourCC("n007"))
    u = BlzCreateUnitWithSkin(p, FourCC("n012"), 3264.0, -3520.0, 270.000, FourCC("n012"))
    u = BlzCreateUnitWithSkin(p, FourCC("n012"), 3264.0, 3008.0, 270.000, FourCC("n012"))
    u = BlzCreateUnitWithSkin(p, FourCC("n012"), -3264.0, 3008.0, 270.000, FourCC("n012"))
    u = BlzCreateUnitWithSkin(p, FourCC("n007"), -3264.0, 2880.0, 270.000, FourCC("n007"))
    u = BlzCreateUnitWithSkin(p, FourCC("n007"), 3264.0, 2880.0, 270.000, FourCC("n007"))
    u = BlzCreateUnitWithSkin(p, FourCC("n00R"), 3264.0, -3264.0, 270.000, FourCC("n00R"))
    SetUnitColor(u, ConvertPlayerColor(10))
    u = BlzCreateUnitWithSkin(p, FourCC("n00R"), 3264.0, 2752.0, 270.000, FourCC("n00R"))
    SetUnitColor(u, ConvertPlayerColor(10))
    u = BlzCreateUnitWithSkin(p, FourCC("n004"), 0.0, -1728.0, 270.000, FourCC("n004"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("n004"), 0.0, 1152.0, 270.000, FourCC("n004"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("n01B"), -1280.0, -256.0, 270.000, FourCC("n01B"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("n01B"), 1344.0, -192.0, 270.000, FourCC("n01B"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("nT04"), -2944.0, -512.0, 270.000, FourCC("nT04"))
    SetUnitColor(u, ConvertPlayerColor(0))
    u = BlzCreateUnitWithSkin(p, FourCC("ncp3"), -2688.0, -256.0, 270.000, FourCC("ncp3"))
    u = BlzCreateUnitWithSkin(p, FourCC("n01A"), -2368.0, -512.0, 270.000, FourCC("n01A"))
    SetUnitColor(u, ConvertPlayerColor(0))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer0()
    CreateBuildingsForPlayer1()
    CreateBuildingsForPlayer2()
    CreateBuildingsForPlayer3()
    CreateBuildingsForPlayer4()
    CreateBuildingsForPlayer5()
    CreateBuildingsForPlayer6()
    CreateBuildingsForPlayer7()
    CreateBuildingsForPlayer8()
    CreateBuildingsForPlayer9()
    CreateBuildingsForPlayer10()
    CreateBuildingsForPlayer11()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
    CreateUnitsForPlayer1()
    CreateUnitsForPlayer2()
    CreateUnitsForPlayer3()
    CreateUnitsForPlayer4()
    CreateUnitsForPlayer5()
    CreateUnitsForPlayer6()
    CreateUnitsForPlayer7()
    CreateUnitsForPlayer8()
    CreateUnitsForPlayer9()
    CreateUnitsForPlayer10()
    CreateUnitsForPlayer11()
end

function CreateAllUnits()
    CreateNeutralPassiveBuildings()
    CreatePlayerBuildings()
    CreatePlayerUnits()
end

function CreateRegions()
    local we
    gg_rct_MidArea = Rect(-1440.0, -1792.0, 1472.0, 1312.0)
    gg_rct_Tavern = Rect(-3200.0, -768.0, -2176.0, 224.0)
    gg_rct_Shop_T1 = Rect(-3392.0, 2528.0, -2784.0, 3136.0)
    gg_rct_Shop_T2 = Rect(2752.0, 2496.0, 3392.0, 3104.0)
    gg_rct_Shop_T3 = Rect(2752.0, -3616.0, 3392.0, -3040.0)
    gg_rct_Shop_T4 = Rect(-3392.0, -3616.0, -2752.0, -3040.0)
end

function Trig_Untitled_Trigger_001_Actions()
end

function InitTrig_Untitled_Trigger_001()
    gg_trg_Untitled_Trigger_001 = CreateTrigger()
    TriggerAddAction(gg_trg_Untitled_Trigger_001, Trig_Untitled_Trigger_001_Actions)
end

function InitCustomTriggers()
    InitTrig_Untitled_Trigger_001()
end

function InitUpgrades_Player0()
    SetPlayerTechResearched(Player(0), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(0), FourCC("Rows"), 1)
end

function InitUpgrades_Player1()
    SetPlayerTechResearched(Player(1), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(1), FourCC("Rows"), 1)
end

function InitUpgrades_Player2()
    SetPlayerTechResearched(Player(2), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(2), FourCC("Rows"), 1)
end

function InitUpgrades_Player3()
    SetPlayerTechResearched(Player(3), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(3), FourCC("Rows"), 1)
end

function InitUpgrades_Player4()
    SetPlayerTechResearched(Player(4), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(4), FourCC("Rows"), 1)
end

function InitUpgrades_Player5()
    SetPlayerTechResearched(Player(5), FourCC("Rhse"), 1)
end

function InitUpgrades_Player6()
    SetPlayerTechResearched(Player(6), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(6), FourCC("Rows"), 1)
end

function InitUpgrades_Player7()
    SetPlayerTechResearched(Player(7), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(7), FourCC("Rows"), 1)
end

function InitUpgrades_Player8()
    SetPlayerTechResearched(Player(8), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(8), FourCC("Rows"), 1)
end

function InitUpgrades_Player9()
    SetPlayerTechResearched(Player(9), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(9), FourCC("Rows"), 1)
end

function InitUpgrades_Player10()
    SetPlayerTechResearched(Player(10), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(10), FourCC("Rows"), 1)
end

function InitUpgrades_Player11()
    SetPlayerTechResearched(Player(11), FourCC("Rhse"), 1)
    SetPlayerTechResearched(Player(11), FourCC("Rows"), 1)
end

function InitUpgrades()
    InitUpgrades_Player0()
    InitUpgrades_Player1()
    InitUpgrades_Player2()
    InitUpgrades_Player3()
    InitUpgrades_Player4()
    InitUpgrades_Player5()
    InitUpgrades_Player6()
    InitUpgrades_Player7()
    InitUpgrades_Player8()
    InitUpgrades_Player9()
    InitUpgrades_Player10()
    InitUpgrades_Player11()
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    ForcePlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), false)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(1), 1)
    ForcePlayerStartLocation(Player(1), 1)
    SetPlayerColor(Player(1), ConvertPlayerColor(1))
    SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(1), false)
    SetPlayerController(Player(1), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(2), 2)
    ForcePlayerStartLocation(Player(2), 2)
    SetPlayerColor(Player(2), ConvertPlayerColor(2))
    SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(2), false)
    SetPlayerController(Player(2), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(3), 3)
    ForcePlayerStartLocation(Player(3), 3)
    SetPlayerColor(Player(3), ConvertPlayerColor(3))
    SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(3), false)
    SetPlayerController(Player(3), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(4), 4)
    ForcePlayerStartLocation(Player(4), 4)
    SetPlayerColor(Player(4), ConvertPlayerColor(4))
    SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(4), false)
    SetPlayerController(Player(4), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(5), 5)
    ForcePlayerStartLocation(Player(5), 5)
    SetPlayerColor(Player(5), ConvertPlayerColor(5))
    SetPlayerRacePreference(Player(5), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(5), false)
    SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(6), 6)
    ForcePlayerStartLocation(Player(6), 6)
    SetPlayerColor(Player(6), ConvertPlayerColor(6))
    SetPlayerRacePreference(Player(6), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(6), false)
    SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(7), 7)
    ForcePlayerStartLocation(Player(7), 7)
    SetPlayerColor(Player(7), ConvertPlayerColor(7))
    SetPlayerRacePreference(Player(7), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(7), false)
    SetPlayerController(Player(7), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(8), 8)
    ForcePlayerStartLocation(Player(8), 8)
    SetPlayerColor(Player(8), ConvertPlayerColor(8))
    SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(8), false)
    SetPlayerController(Player(8), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(9), 9)
    ForcePlayerStartLocation(Player(9), 9)
    SetPlayerColor(Player(9), ConvertPlayerColor(9))
    SetPlayerRacePreference(Player(9), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(9), false)
    SetPlayerController(Player(9), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(10), 10)
    ForcePlayerStartLocation(Player(10), 10)
    SetPlayerColor(Player(10), ConvertPlayerColor(10))
    SetPlayerRacePreference(Player(10), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(10), false)
    SetPlayerController(Player(10), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(11), 11)
    ForcePlayerStartLocation(Player(11), 11)
    SetPlayerColor(Player(11), ConvertPlayerColor(11))
    SetPlayerRacePreference(Player(11), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(11), false)
    SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
    SetPlayerTeam(Player(1), 0)
    SetPlayerTeam(Player(2), 0)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    SetPlayerTeam(Player(3), 1)
    SetPlayerTeam(Player(4), 1)
    SetPlayerTeam(Player(5), 1)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    SetPlayerTeam(Player(6), 2)
    SetPlayerTeam(Player(7), 2)
    SetPlayerTeam(Player(8), 2)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    SetPlayerTeam(Player(9), 3)
    SetPlayerTeam(Player(10), 3)
    SetPlayerTeam(Player(11), 3)
    SetPlayerAllianceStateAllyBJ(Player(9), Player(10), true)
    SetPlayerAllianceStateAllyBJ(Player(9), Player(11), true)
    SetPlayerAllianceStateAllyBJ(Player(10), Player(9), true)
    SetPlayerAllianceStateAllyBJ(Player(10), Player(11), true)
    SetPlayerAllianceStateAllyBJ(Player(11), Player(9), true)
    SetPlayerAllianceStateAllyBJ(Player(11), Player(10), true)
    SetPlayerAllianceStateVisionBJ(Player(9), Player(10), true)
    SetPlayerAllianceStateVisionBJ(Player(9), Player(11), true)
    SetPlayerAllianceStateVisionBJ(Player(10), Player(9), true)
    SetPlayerAllianceStateVisionBJ(Player(10), Player(11), true)
    SetPlayerAllianceStateVisionBJ(Player(11), Player(9), true)
    SetPlayerAllianceStateVisionBJ(Player(11), Player(10), true)
end

function InitAllyPriorities()
    SetStartLocPrioCount(1, 1)
    SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(2, 2)
    SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_LOW)
    SetStartLocPrioCount(3, 2)
    SetStartLocPrio(3, 0, 4, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 1, 5, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(4, 2)
    SetStartLocPrio(4, 0, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(4, 1, 5, MAP_LOC_PRIO_LOW)
    SetStartLocPrioCount(5, 1)
    SetStartLocPrio(5, 0, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(6, 2)
    SetStartLocPrio(6, 0, 7, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(6, 1, 8, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(7, 2)
    SetStartLocPrio(7, 0, 6, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(7, 1, 8, MAP_LOC_PRIO_LOW)
    SetStartLocPrioCount(8, 1)
    SetStartLocPrio(8, 0, 6, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(9, 2)
    SetStartLocPrio(9, 0, 10, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(9, 1, 11, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(10, 2)
    SetStartLocPrio(10, 0, 9, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(10, 1, 11, MAP_LOC_PRIO_LOW)
    SetStartLocPrioCount(11, 1)
    SetStartLocPrio(11, 0, 9, MAP_LOC_PRIO_HIGH)
end

function main()
    SetCameraBounds(-3456.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3712.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3200.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3456.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3200.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3712.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("CityScapeDay")
    SetAmbientNightSound("CityScapeNight")
    SetMapMusic("Music", true, 0)
    CreateRegions()
    InitUpgrades()
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
end

function config()
    SetMapName("TRIGSTR_2481")
    SetMapDescription("TRIGSTR_3909")
    SetPlayers(12)
    SetTeams(12)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, -2496.0, 2240.0)
    DefineStartLocation(1, -1472.0, 2304.0)
    DefineStartLocation(2, -2560.0, 1216.0)
    DefineStartLocation(3, 2496.0, 2240.0)
    DefineStartLocation(4, 2560.0, 1216.0)
    DefineStartLocation(5, 1472.0, 2304.0)
    DefineStartLocation(6, -2496.0, -2752.0)
    DefineStartLocation(7, -2560.0, -1728.0)
    DefineStartLocation(8, -1472.0, -2816.0)
    DefineStartLocation(9, 2496.0, -2752.0)
    DefineStartLocation(10, 2560.0, -1728.0)
    DefineStartLocation(11, 1472.0, -2816.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
    InitAllyPriorities()
end

