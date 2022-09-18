///scr_ability_RedAlert3_Spy_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
//run animation of ability
var victimList=ds_list_create()
ds_list_add(victimList,global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist[| 1])
ds_list_add(victimList,global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist[| 3])
ani_AttackSet_basic(atkr,victimList)

//Get the card
if atkr.mysocket=global.NetworkObj.mysocket{
    with(stid[? atkr.mysocket]){
        GameEvent_draw_specific_card(vict.CardID)
    }
}
//deduct the points
with(global.NetworkObj.socket_to_instanceid[? atkr.mysocket]){
    Points-=(15)
}
//clear that card
with(vict){
    Stats[? "Hp"]=0//for servitors
    Activate_Damaged_Ability()
    GameEvent_cardholders_Clear()
}
//Ability alrdy done
atkr.Stats[? "AbilityAlrdy"]=true
atkr.Stats[? "AbilityCooldown"]=atkr.Stats[? "AbilityCooldownMax"]

//remove from selected
if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
    ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
}
MapStr[? "Attacker"].IsSelected_Ability=false

ds_map_destroy(MapStr)

