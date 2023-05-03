///scr_heroability_D2_Zavala_Activate()
var MapStr=argument0;
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
with(stid[? atkr.mysocket]){
    var _id=HeroGetMultiStatsString(id)
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            var _mii=Stats[? "Multi_IsImmune"];
            _mii[? _id]=1
            Stats[? "Base_Atk"]+=5
            Stats[? "Atk"]+=5
            GameEvent_cardholders_heal(10)
        }
    }
}
//Ability alrdy done
atkr.Stats[? "ActivateAbilityAlrdy"]=true
Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1

ds_map_destroy(MapStr)
