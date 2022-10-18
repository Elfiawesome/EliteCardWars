///scr_heroability_D2_Zavala_Activate()
var MapStr=argument0;
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
with(stid[? atkr.mysocket]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            var _mii=Stats[? "Multi_IsImmune"];
            _mii[? "Hero"]=1
            player_con_CardholdersUpdateMultiStats()
        }
    }
}
//Ability alrdy done
atkr.Stats[? "AbilityAlrdy"]=true
Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1

ds_map_destroy(MapStr)
