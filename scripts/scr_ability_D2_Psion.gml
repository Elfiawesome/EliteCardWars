///scr_ability_D2_Psion()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
if global.GameStage=GAMESTAGE.PLAYERTURNS{
//if vict.CardID!=0 && vict.mysocket!=atkr.mysocket && stid[? vict.mysocket].Team!=stid[? atkr.mysocket].Team{
if scr_ability_Checks_OnlyEnemy(vict,atkr){
    //run animation of ability
    var victimList=ds_list_create()
    ds_list_add(victimList,vict)
    ani_AttackSet_basic(atkr,victimList)
    ds_list_destroy(victimList)
    
    //refund the card if you are the victim
    if vict.mysocket=global.NetworkObj.mysocket{
        with(stid[? vict.mysocket]){
            GameEvent_draw_specific_card(vict.CardID)
        }
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
}
}

ds_map_destroy(MapStr)

