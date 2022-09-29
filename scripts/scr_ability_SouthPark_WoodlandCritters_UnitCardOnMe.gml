///scr_ability_SouthPark_WoodlandCritters_UnitCardOnMe()
var MapStr=argument0;
Stats[? "Hp"]+=floor(global.UnitDat_Hp[MapStr]/2)
Stats[? "Base_Hp"]+=floor(global.UnitDat_Hp[MapStr]/2)
Stats[? "Atk"]+=floor(global.UnitDat_Atk[MapStr]/2)
Stats[? "Base_Atk"]+=floor(global.UnitDat_Atk[MapStr]/2)
player_con_CardholdersUpdateMultiStats()
