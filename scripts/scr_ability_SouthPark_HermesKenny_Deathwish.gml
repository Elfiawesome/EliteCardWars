///scr_ability_SouthPark_Firkle_Deathwish()
var MapStr=argument0;
//all allies +5Atk
var _con=global.NetworkObj.socket_to_instanceid[? mysocket];

with(_con.Hero){
    var _msa=Stats[? "Multi_ExtraPointsAmt"];
    var _msd=Stats[? "Multi_ExtraPointsDuration"];
    _msa[? GetMultiStatsString(other.id)]=2
    _msd[? GetMultiStatsString(other.id)]=5
    player_con_HeroUpdateMultiStats()
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
