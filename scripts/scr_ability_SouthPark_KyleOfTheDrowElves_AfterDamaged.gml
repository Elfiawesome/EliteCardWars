///scr_ability_SouthPark_KyleOfTheDrowElves_AfterDamaged()
var MapStr=argument0;

var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
if Stats[? "Finalized_Hp"]<1{
    for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
        with(_con.Cardholderlist[| i]){
            //remove its immunity
            var _m=Stats[? "Multi_IsImmune"];
            ds_map_delete(_m,GetMultiStatsString(other.id))
            player_con_CardholdersUpdateMultiStats()
        }
    }
}
