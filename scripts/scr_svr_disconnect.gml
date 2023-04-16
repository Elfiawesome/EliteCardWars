///scr_svr_disconnect()
var socket=argument0

//tell everyone this 'socket' has disconnected
for(var i=0;i<ds_list_size(socketlist);i++){
    var sock=socketlist[| i]
    buffer=buffer_create(1024,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.PLAYERDISCONNECT)
    buffer_write(buffer,buffer_s16,socket)
    network_send_packet(sock,buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}


//Remove this 'socket' instance from the game
ds_list_delete(socketlist,ds_list_find_index(socketlist,socket))
instance_destroy(socket_to_instanceid[? socket])
ds_map_delete(socket_to_instanceid,socket)


//update team maps
update_json_TeamMap()
update_Turnstage(TeamMap)
if global.IsGame && Turn>=0{TurnstageMoveOn()}

//if I am the one disconected (technically useless here but sure)
if socket=global.NetworkObj.mysocket{
    if global.NetworkObj.object_index=obj_client{
        network_destroy(global.NetworkObj.client)
    }
    if global.NetworkObj.object_index=obj_server{
        network_destroy(global.NetworkObj.server)
    }
    instance_destroy(global.NetworkObj)
    instance_destroy(obj_player_con)
    room_goto(rm_menu)
}
