///scr_ability_SouthPark_AWESOMEO4000_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]

//run animation of ability
var victimList=ds_list_create()
ds_list_add(victimList,vict)
ani_GoToEnemyAndAttackSet_basic(atkr,victimList)
ds_list_destroy(victimList)
//Freeze those cards
with(vict){
    var _mii=Stats[? "Multi_IsFrozen"];
    _mii[? GetMultiStatsString(atkr)]=1
    player_con_CardholdersUpdateMultiStats()
}
with(atkr){
    Stats[? "AbilityAlrdy"]=true
    Stats[? "AbilityCooldown"]=atkr.Stats[? "AbilityCooldownMax"]+1
}
//remove from selected
if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
    ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
}
MapStr[? "Attacker"].IsSelected_Ability=false

ds_map_destroy(MapStr)
