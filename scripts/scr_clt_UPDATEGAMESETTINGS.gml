///scr_clt_UPDATEGAMESETTINGS(buffer)
var buffer=argument0
var mapstr=buffer_read(buffer,buffer_string)
var _m=json_decode(mapstr)
ds_map_copy(GameSettings,_m)
ds_map_destroy(_m)
