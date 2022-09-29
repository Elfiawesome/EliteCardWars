///scr_ability_SouthPark_ZenCartman_Intrinsic()
var MapStr=argument0;
if Stats[? "Finalized_Hp"]>0{
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
with(_con.Hero){
    var _m=Stats[? "Multi_ForceAttackHolder"];
    _m[? GetMultiStatsString(other.id)]=other.Pos
    player_con_HeroUpdateMultiStats()
}
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
