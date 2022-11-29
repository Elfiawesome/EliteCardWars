///GameEvent_draw_specific_card(CardID,Type)
var _card=instance_create(0,0,obj_card);
var xMid=view_wport[0]/2;
var yMid=view_hport[0]*1.3;
var HorRad=view_wport[0]*0.45;
var VerRad=view_hport[0]*0.4;
_card.CardID=argument0
_card.CardType=argument1
ds_list_add(cardList,_card)
//reorganize hand cards
for(var i=0;i<ds_list_size(cardList);i+=1){
    angle=pi/2+degtorad(10 / clamp((ds_list_size(cardList)/20)*2,1,30))*(ds_list_size(cardList)/2-i)
    cardList[| i].Homex=xMid+(HorRad*cos(angle))
    cardList[| i].Homey=yMid-(VerRad*sin(angle))    
    cardList[| i].CardPos=i
    cardList[| i].HomeDepth=-1-1/i
}
//tell server I drawed a card
var _m=ds_map_create();_m[? "ID"]=argument0;_m[? "Type"]=argument1;ds_list_add(HandCards,json_encode_destroy(_m))
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
