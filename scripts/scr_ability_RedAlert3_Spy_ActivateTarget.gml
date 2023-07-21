///scr_ability_RedAlert3_Spy_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
if !vict.Stats[? "IsAbilityImmune"] && vict.Stats[? "IsCheezable"]{
    //run animation of ability
    var victimList=ds_list_create()
    ds_list_add(victimList,global.NetworkObj.socket_to_instanceid[? vict.mysocket].Cardholderlist[| vict.Pos])
    ani_GoToEnemyAndAttackSet_basic(atkr,victimList)
    
    //Get the card
    if atkr.mysocket=global.NetworkObj.mysocket{
        with(stid[? atkr.mysocket]){
            GameEvent_draw_specific_card(vict.CardID,0)
        }
    }
    //deduct the points
    with(global.NetworkObj.socket_to_instanceid[? atkr.mysocket]){
        Points-=(15)
    }
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

