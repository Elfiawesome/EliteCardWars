///scr_ability_D2_Servitor_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]


if scr_ability_Checks_OnlyAllies_NoImmuneCapable(vict,atkr){
    //run animation of ability
    var victimList=ds_list_create()
    ds_list_add(victimList,vict)
    ani_AttackSet_basic(atkr,victimList)
    ds_list_destroy(victimList)
    //Immune that card
    with(vict){
        var _mii=Stats[? "Multi_IsImmune"];
        _mii[? GetMultiStatsString(atkr)]=1
        player_con_CardholdersUpdateMultiStats()
    }
    with(atkr){
        Stats[? "AbilityConstantTarget"]=GetMultiStatsString(atkr)
        Stats[? "AbilityAlrdy"]=true
    }
    //remove from selected
    if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
        ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
    }
    MapStr[? "Attacker"].IsSelected_Ability=false
}
ds_map_destroy(MapStr)

