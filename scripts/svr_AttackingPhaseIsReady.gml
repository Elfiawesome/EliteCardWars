///svr_AttackingPhaseIsReady(socket)
var socket=argument0
if ds_list_find_index(ReadySocket,socket)=-1{
ds_list_add(ReadySocket,socket)
for(var i=0;i<ds_list_size(socketlist);i++){
    buffer=buffer_create(1024,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.ATTACKINGPHASEISREADY)
    buffer_write(buffer,buffer_s16,socket)
    network_send_packet(socketlist[| i],buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}
}

if ds_list_size(ReadySocket)=array_length_1d(Turnstage){
    svr_TurnstageMoveOn()
}
