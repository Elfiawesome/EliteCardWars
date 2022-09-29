///scr_svr_connect()
var socket=argument0

//tell everyone this 'connecting socket' has just connected (used for annoucning chat 'player ... has connected')
for(var i=0;i<ds_list_size(socketlist);i++){
    var sock=socketlist[| i]
    buffer=buffer_create(1024,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.PLAYERCONNECT)
    buffer_write(buffer,buffer_s16,socket)
    network_send_packet(sock,buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}

//tell 'connecting socket' everyone else's Player Init Data
for(var i=0;i<ds_list_size(socketlist);i++){
    var sock=socketlist[| i]
    buffer=buffer_create(1024,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.PLAYERINITCREATE)
    buffer_write(buffer,buffer_s16,sock)
    buffer_write(buffer,buffer_string,scr_Player_Init_Data_Get(socket_to_instanceid[? sock]))
    network_send_packet(socket,buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}

//tell 'connecting socket' to send Player Init Data to us -> (server)
buffer=buffer_create(1024,buffer_fixed,1)
buffer_write(buffer,buffer_s16,NETWORKPKT.PLAYERINIT)
buffer_write(buffer,buffer_s16,socket)
network_send_packet(socket,buffer,buffer_tell(buffer))
buffer_delete(buffer)

//add 'connecting socket' player object to server game
ds_list_add(socketlist,socket)
var _o=instance_create(100,100,obj_player_con);
_o.mysocket=socket
with(_o){Team=irandom_range(1,5)}
socket_to_instanceid[? socket] = _o

