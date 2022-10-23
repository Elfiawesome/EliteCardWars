///scr_svr_PLAYERINIT(socket,buffer)
var socket=argument0
var buffer=argument1

//retreive Player's init data string
var str=buffer_read(buffer,buffer_string)
//set the Player Init Data values into this 'socket'
scr_Player_Init_Data_Set(socket_to_instanceid[? socket],str)
//tell all other clients to create this player with the Player Init Data Values given(str)
for(var i=0;i<ds_list_size(socketlist);i++){
    var sock=socketlist[| i]
    if sock!=socket{
        buffer=buffer_create(2048,buffer_fixed,1)
        buffer_write(buffer,buffer_s16,NETWORKPKT.PLAYERINITCREATE)
        buffer_write(buffer,buffer_s16,socket)
        buffer_write(buffer,buffer_string,scr_Player_Init_Data_Get(socket_to_instanceid[? socket]))
        network_send_packet(sock,buffer,buffer_tell(buffer))
        buffer_delete(buffer)
    }
}
