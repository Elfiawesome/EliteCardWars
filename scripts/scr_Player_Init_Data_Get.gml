///scr_Player_Init_Data_Get(object)
var inst=argument0
var _m = ds_map_create();
_m[? "Name"]=inst.name
_m[? "Team"]=inst.Team
var str=json_encode_destroy(_m);
return str



