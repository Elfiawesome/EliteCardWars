///scr_ability_SouthPark_ZenCartman_AfterDamaged()
var MapStr=argument0;

if Stats[? "Finalized_Hp"]<1{    
    var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
    with(_con.Hero){
        var _m=Stats[? "Multi_ForceAttackHolder"];
        ds_map_delete(_m,GetMultiStatsString(other.id))
        player_con_HeroUpdateMultiStats()
    }
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
}
