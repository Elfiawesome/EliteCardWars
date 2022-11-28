///scr_ability_RedAlert3_FutureTankX1_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]

//run animation of ability
var victimList=ds_list_create()
ds_list_add(victimList,global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist[| 1])
ds_list_add(victimList,global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist[| 3])
ani_AttackSet_basic(atkr,victimList)
//damage those cards
for(var i=0;i<ds_list_size(victimList);i+=1){
    with(victimList[| i]){
        GameEvent_cardholders_DealDamageAmt(victimList[| i],atkr,25)
    }
}
//damage those cards
for(var i=0;i<ds_list_size(victimList);i+=1){
    with(victimList[| i]){
        GameEvent_cardholders_AfterDamaged(id)
    }
}
ds_list_destroy(victimList)
with(atkr){
    Stats[? "AtkAlrdy"]=true
    Stats[? "AbilityAlrdy"]=true
    Stats[? "AbilityCooldown"]=atkr.Stats[? "AbilityCooldownMax"]+1
}
//remove from selected
if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
    ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
}
MapStr[? "Attacker"].IsSelected_Ability=false

ds_map_destroy(MapStr)

