///scr_clt_PLAYERDISCONNECT(buffer)
var buffer=argument0

var socket=buffer_read(buffer,buffer_s16)

//Remove socket instance from the game
ds_list_delete(socketlist,ds_list_find_index(socketlist,socket))
instance_destroy(socket_to_instanceid[? socket])
ds_map_delete(socket_to_instanceid,socket)


//update team maps
update_json_TeamMap()
update_Turnstage(TeamMap)
if global.IsGame=true && Turn>=0{TurnstageMoveOn()}

//if I am the one disconected (technically useless here but sure)
if socket=global.NetworkObj.mysocket{
    if global.NetworkObj.object_index=obj_client{
        network_destroy(global.NetworkObj.client)
    }
    instance_destroy(global.NetworkObj)
    instance_destroy(obj_player_con)
    room_goto(rm_menu)
}
