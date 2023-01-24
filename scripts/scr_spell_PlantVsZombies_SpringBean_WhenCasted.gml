///scr_spell_PlantVsZombies_SpringBean_WhenCasted()
var MapStr=argument0;

//refund the card if you are the victim
if mysocket=global.NetworkObj.mysocket{
    with(global.NetworkObj.socket_to_instanceid[? mysocket]){
        GameEvent_draw_specific_card(other.CardID,0)
    }
}
/*var _m=ds_map_create();
_m[? "socket"]=mysocket;
_m[? "ID"]=CardID;
_m[? "Type"]=0
var _str=json_encode_destroy(_m);
with(global.NetworkObj){
    if global.NetworkObj.object_index=obj_server{
        svr_AddCardIntoHand(_str,other.mysocket)
    }
}*/
//clear this card
Stats[? "Finalized_Hp"]=0//for servitors
GameEvent_cardholders_AfterDamaged(id)
GameEvent_cardholders_Clear()
