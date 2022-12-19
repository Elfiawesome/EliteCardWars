///scr_ability_RedAlert3_FutureTankX1_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]

//create victim list
var victimList=ds_list_create()
var VictListwDmgNo=ds_list_create()
ds_list_add(victimList,global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist[| 1])
ds_list_add(victimList,global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist[| 3])

//damage those cards
for(var i=0;i<ds_list_size(victimList);i+=1){
    with(victimList[| i]){
        GameEvent_cardholders_DealDamageAmt(victimList[| i],atkr,25)
        //damage numbers
        var _m=ds_map_create();
        _m[? "Object"]=id
        _m[? "DamageNumber"]=FindDamageAmount(25,atkr,id)
        ds_list_add(VictListwDmgNo,_m)
        ds_list_mark_as_map(VictListwDmgNo,ds_list_size(VictListwDmgNo)-1)
    }
}

//run animation of ability
ani_AttackSet_basic(atkr,VictListwDmgNo)
ds_list_destroy(VictListwDmgNo)

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

