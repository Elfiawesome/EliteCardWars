///scr_RemoveAndDestroyCardFromHand(Object)
var _p=argument0
instance_destroy(_p)
var _pos=ds_list_find_index(cardList,_p);
var _value=HandCards[| ds_list_find_index(cardList,_p)]

ds_list_delete(HandCards,ds_list_find_index(cardList,_p))
ds_list_delete(cardList,ds_list_find_index(cardList,_p))


//tell server I removed a card
_m=ds_map_create()
_m[? "socket"]=global.NetworkObj.mysocket;
_m[? "pos"]=_pos
_m[? "value"]=_value
var _str=json_encode_destroy(_m);
with(global.NetworkObj){
if global.NetworkObj.object_index=obj_client{
    buffer=buffer_create(2048,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.REMOVECARDFROMHAND)
    buffer_write(buffer,buffer_string,_str)
    network_send_packet(client,buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}
if global.NetworkObj.object_index=obj_server{
    svr_RemoveCardFromHand(_str,0)
}
}
