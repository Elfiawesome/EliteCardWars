///scr_ability_SouthPark_Fastpass_Damaging()
var MapStr=argument0;

with(MapStr){
    var msDmg=Stats[? "Multi_BurnDmg"];
    var msDur=Stats[? "Multi_BurnDuration"];
    msDmg[? GetMultiStatsString(other.id)]=5
    msDur[? GetMultiStatsString(other.id)]=2
    player_con_CardholdersUpdateMultiStats()
}
