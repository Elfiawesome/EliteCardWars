///scr_ability_D2_Psion()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
if global.GameStage=GAMESTAGE.PLAYERTURNS{
if vict.mysocket!=atkr.mysocket && stid[? vict.mysocket].Team!=stid[? atkr.mysocket].Team{
    with(vict){
        GameEvent_cardholders_Clear()
    }
    atkr.Stats[? "AbilityAlrdy"]=true
    
    //remove from selected
    if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
        ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
    }
    MapStr[? "Attacker"].IsSelected_Ability=false
}
}
ds_map_destroy(MapStr)

