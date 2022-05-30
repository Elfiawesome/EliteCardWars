///scr_clt_PLAYERDISCONNECT(buffer)
var buffer=argument0

var socket=buffer_read(buffer,buffer_s16)

//Remove socket instance from the game
ds_list_delete(socketlist,ds_list_find_index(socketlist,socket))
instance_destroy(socket_to_instanceid[? socket])
ds_map_delete(socket_to_instanceid,socket)



