///GameEvent_draw_specific_card(CardID,Type)
var _card=GameEvent_create_card(argument0,argument1)
//tell server I drawed a card
var _m=ds_map_create();
_m[? "socket"]=global.NetworkObj.mysocket;
_m[? "ID"]=_card.CardID;
_m[? "Type"]=_card.CardType
var _str=json_encode_destroy(_m);
with(global.NetworkObj){
if global.NetworkObj.object_index=obj_client{
    buffer=buffer_create(2048,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.ADDCARDINTOHAND)
    buffer_write(buffer,buffer_string,_str)
    network_send_packet(client,buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}
if global.NetworkObj.object_index=obj_server{
    svr_AddCardIntoHand(_str,0)
}
}

return _card
