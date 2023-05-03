///scr_spell_GenshinImpact_MusouNoHitachi_WhenCasted(Mapstr)
var MapStr=argument0;
if CardID=UnitID.GenshinImpact_RaidenShogun{
    Stats[? "Atk"]+=Stats[? "Atk"]*1.5
}else{
    var _mii=Stats[? "Multi_IsBAImmune"];
    _mii[? GetMultiStatsString_Spells(MapStr)]=2
}
player_con_CardholdersUpdateMultiStats()

