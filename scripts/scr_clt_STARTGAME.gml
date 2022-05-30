///scr_clt_STARTGAME(buffer)
var buffer=argument0
var _TeamMap=buffer_read(buffer,buffer_string)


var Map=json_decode(_TeamMap)
ds_map_copy(TeamMap,Map)
ds_map_destroy(Map)

create_AllCardHolders(TeamMap)
update_Turnstage(TeamMap)

global.IsGame=true
