///scr_ability_SouthPark_IncanCraig_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]

//create victim list
var victimList=ds_list_create()
var VictListwDmgNo=ds_list_create()
var battlefield=global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist
for(var i=0;i<(ds_list_size(battlefield));i++){
    if IsBackUnit(i,battlefield) || IsMiddleUnit(i,battlefield){
        ds_list_add(victimList,battlefield[| i])
    }
}
//damage those cards
for(var i=0;i<ds_list_size(victimList);i+=1){
    with(victimList[| i]){
        var _dmg=20
        if Stats[? "IsAbilityImmune"]{_dmg=0}
        //execute Damage Event
        GameEvent_cardholders_DealDamageAmt(victimList[| i],atkr,_dmg)
        //execute Damaged Event
        GameEvent_cardholders_Damaged(atkr)
        //damage numbers
        var _m=ds_map_create();
        _m[? "Object"]=id
        _m[? "DamageNumber"]=FindDamageAmount(_dmg,atkr,id)
        ds_list_add(VictListwDmgNo,_m)
        ds_list_mark_as_map(VictListwDmgNo,ds_list_size(VictListwDmgNo)-1)
    }
}

//run animation of ability
ani_AttackSet_basic(atkr,VictListwDmgNo)


//damage those cards
for(var i=0;i<ds_list_size(victimList);i+=1){
    with(victimList[| i]){
        GameEvent_cardholders_AfterDamaged(id)
    }
}
ds_list_destroy(victimList)
with(atkr){
    Stats[? "AtkLeft"]-=1
    Stats[? "AbilityAlrdy"]=true
    Stats[? "AbilityCooldown"]=atkr.Stats[? "AbilityCooldownMax"]+1
}
//remove from selected
if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
    ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
}
MapStr[? "Attacker"].IsSelected_Ability=false

ds_map_destroy(MapStr)

