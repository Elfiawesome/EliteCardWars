///scr_clt_PLAYERINIT(buffer)
var buffer=argument0

var socket=buffer_read(buffer,buffer_s16)
//set my socket id gotten from the server
mysocket=socket
//Convert Player Init Data into a map; similar to scr_Player_Init_Data_Get
var map=ds_map_create();
map[? "Name"]=global.PlayerOnlineName
map[? "Team"]=0
map[? "Deck"]=ds_list_write(global.PlayerDeck)
map[? "Spell"]=ds_list_write(global.PlayerSpells)
map[? "Hero"]=global.PlayerHero
var str=json_encode_destroy(map)

//send my Player Init Data to server
buffer=buffer_create(2048,buffer_fixed,1)
buffer_write(buffer,buffer_s16,NETWORKPKT.PLAYERINIT)
buffer_write(buffer,buffer_string,str)
network_send_packet(client,buffer,buffer_tell(buffer))
buffer_delete(buffer)


//create my player object
var _inst=instance_create(100,100,obj_player_con);
scr_Player_Init_Data_Set(_inst,str)
_inst.IsLocal=true
_inst.mysocket=socket
socket_to_instanceid[? mysocket]=_inst
ds_list_add(socketlist,mysocket)
