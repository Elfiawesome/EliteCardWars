///svr_ActivateUnitCardOnMe(mysocket,pos,selection)
var _sock=argument0
var _pos=argument1
var _selection=argument2
var _cardholder=socket_to_instanceid[? _sock].Cardholderlist[| _pos]
ActivateUnitCardOnMe(_cardholder,_selection)
for(var i=0;i<ds_list_size(socketlist);i++){
    buffer=buffer_create(2048,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.ACTIVATEUNITCARDONME)
    buffer_write(buffer,buffer_s16,_sock)
    buffer_write(buffer,buffer_s16,_pos)
    buffer_write(buffer,buffer_s16,_selection)
    network_send_packet(socketlist[| i],buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}

