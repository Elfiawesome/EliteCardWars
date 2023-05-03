///scr_ability_SouthPark_RobinTweek_ActivateTarget()
var MapStr=argument0;
///scr_ability_TowerBattles_Void_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]

//run animation of ability
var victimList=ds_list_create()
ds_list_add(victimList,vict)
ani_GoToEnemyAndAttackSet_basic(atkr,victimList)
ds_list_destroy(victimList)

//add freeze to the victim
with(vict){
    Stats[? "Hp"]+=15
    Stats[? "Base_Hp"]+=15
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

