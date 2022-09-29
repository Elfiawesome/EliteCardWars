///scr_ability_SouthPark_Firkle_Deathwish()
var MapStr=argument0;
//all allies +5Atk
var _con=global.NetworkObj.socket_to_instanceid[? mysocket];

with(_con){
    var _msa=Stats[? "Multi_ExtraPointsAmt"];
    var _msd=Stats[? "Multi_ExtraPointsDuration"];
    _msa[? GetMultiStatsString(other.id)]=2
    _msa[? GetMultiStatsString(other.id)]=4
    player_con_HeroUpdateMultiStats()
}
