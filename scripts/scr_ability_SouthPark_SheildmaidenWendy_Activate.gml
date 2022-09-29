///scr_ability_SouthPark_SheildmaidenWendy_Activate()
var MapStr=argument0;

var atkr=MapStr[? "Attacker"]
with(atkr){
    //make self immune
    var _mii=Stats[? "Multi_IsImmune"];
    _mii[? GetMultiStatsString(atkr)]=2
    player_con_CardholdersUpdateMultiStats()
    //reset cooldown
    Stats[? "AbilityAlrdy"]=true
    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+2
}
ds_map_destroy(MapStr)
