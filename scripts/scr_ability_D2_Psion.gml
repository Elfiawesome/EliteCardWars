///scr_ability_D2_Psion()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
if !vict.Stats[? "IsAbilityImmune"] && vict.Stats[? "IsCheezable"]{
    //run animation of ability
    var victimList=ds_list_create()
    ds_list_add(victimList,vict)
    ani_GoToEnemyAndAttackSet_basic(atkr,victimList)
    ds_list_destroy(victimList)
    
    //refund the card if you are the victim
    GameEvent_refundCard(vict.mysocket, vict.CardID, "")
    
    //clear that card
    with(vict){
        Stats[? "Finalized_Hp"]=0//for servitors
        GameEvent_cardholders_AfterDamaged(id)
        GameEvent_cardholders_Clear()
    }
    //Ability alrdy done
    atkr.Stats[? "AbilityAlrdy"]=true
    atkr.Stats[? "AbilityCooldown"]=atkr.Stats[? "AbilityCooldownMax"]+1
    
    //remove from selected
    if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
        ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
    }
    MapStr[? "Attacker"].IsSelected_Ability=false
}

ds_map_destroy(MapStr)

