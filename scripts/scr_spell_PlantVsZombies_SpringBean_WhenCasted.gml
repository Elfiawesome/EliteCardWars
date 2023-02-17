///scr_spell_PlantVsZombies_SpringBean_WhenCasted()
var MapStr=argument0;

//refund the card if you are the victim
GameEvent_refundCard(mysocket, CardID, "")

//clear this card
Stats[? "Finalized_Hp"]=0//for servitors
GameEvent_cardholders_AfterDamaged(id)
GameEvent_cardholders_Clear()
