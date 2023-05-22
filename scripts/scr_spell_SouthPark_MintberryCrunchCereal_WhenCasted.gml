///scr_spell_SouthPark_MintberryCrunchCereal_WhenCasted(Mapstr)
var MapStr=argument0;
if CardID=UnitID.SouthPark_FrontierBradely{
    SummonCard(id,UnitID.SouthPark_MintberryCrunch)
}else{
    var _mii=Stats[? "Multi_IsImmune"];
    _mii[? GetMultiStatsString_Spells(MapStr)]=2
    player_con_CardholdersUpdateMultiStats()
}

