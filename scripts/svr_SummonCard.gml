///svr_SummonCard(sock,pos,cardID)
var socket=argument0
var Pos=argument1
var _ID=argument2

SummonCard(socket_to_instanceid[? socket].Cardholderlist[| Pos],_ID)
for(var i=0;i<ds_list_size(socketlist);i++){
    buffer=buffer_create(1024,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.SUMMONCARD)
    buffer_write(buffer,buffer_s16,socket)
    buffer_write(buffer,buffer_s16,Pos)
    buffer_write(buffer,buffer_s16,_ID)
    network_send_packet(socketlist[| i],buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}
