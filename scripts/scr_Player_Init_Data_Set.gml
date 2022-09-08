///scr_Player_Init_Data_Set(object,string map)
var inst=argument0
var str=argument1
//decode string into map
var _m=json_decode(str)
//insert map values into the object
with(inst){
if ds_map_exists(_m,"Name"){name=_m[? "Name"]}
if ds_map_exists(_m,"Team"){Team=_m[? "Team"]}
if ds_map_exists(_m,"Deck"){var _templist=ds_list_create();ds_list_read(_templist,_m[? "Deck"]);ds_list_copy(DeckList,_templist)}
}

//destroy map
ds_map_destroy(_m)



