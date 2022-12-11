///scr_clt_PLAYERINITCREATE(buffer)
var buffer=argument0

var socket=buffer_read(buffer,buffer_s16)
var str=buffer_read(buffer,buffer_string)

//create player object
var _inst=instance_create(100,200,obj_player_con);
socket_to_instanceid[? socket]=_inst
_inst.mysocket=socket
ds_list_add(socketlist,socket)
//set the Player Init Data values into the newly created player object
scr_Player_Init_Data_Set(_inst,str)
