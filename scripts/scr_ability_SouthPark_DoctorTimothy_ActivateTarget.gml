///scr_ability_SouthPark_DoctorTimothy_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
//run animation of ability
var victimList=ds_list_create()
ds_list_add(victimList,global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist[| vict.Pos])
ani_AttackSet_basic(atkr,victimList)

//damage those cards
for(var i=0;i<ds_list_size(victimList);i+=1){
    with(victimList[| i]){
        GameEvent_cardholders_DealDamageAmt(victimList[| i],atkr,10)
    }
}
//damage those cards
for(var i=0;i<ds_list_size(victimList);i+=1){
    with(victimList[| i]){
        Activate_AfterDamaged_Ability()
    }
}
ds_list_destroy(victimList)

//Ability alrdy done
atkr.Stats[? "AbilityAlrdy"]=true
atkr.Stats[? "AbilityCooldown"]=atkr.Stats[? "AbilityCooldownMax"]

//remove from selected
if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
    ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
}
MapStr[? "Attacker"].IsSelected_Ability=false

ds_map_destroy(MapStr)

