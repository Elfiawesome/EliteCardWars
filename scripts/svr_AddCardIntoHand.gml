///svr_AddCardIntoHand(Mapstr,socket)
var _sock=argument1//its just here
for(var i=0;i<ds_list_size(socketlist);i++){
    buffer=buffer_create(2048,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.ADDCARDINTOHAND)
    buffer_write(buffer,buffer_string,argument0)
    network_send_packet(socketlist[| i],buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}
AddCardIntoHand(argument0)
