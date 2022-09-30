///scr_spell_PlantVsZombies_SpringBean_WhenCasted()
var MapStr=argument0;

//refund the card if you are the victim
if mysocket=global.NetworkObj.mysocket{
    with(global.NetworkObj.socket_to_instanceid[? mysocket]){
        GameEvent_draw_specific_card(other.CardID)
    }
}
//clear this card
Stats[? "Finalized_Hp"]=0//for servitors
Activate_AfterDamaged_Ability()
GameEvent_cardholders_Clear()
