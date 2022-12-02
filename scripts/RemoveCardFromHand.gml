///AddCardIntoHand(MapStr)
var _map=json_decode(argument0);

var _sock=_map[? "socket"]
var _pos=_map[? "pos"]
var _value=_map[? "value"]
if global.NetworkObj.mysocket!=_sock{
var _con=global.NetworkObj.socket_to_instanceid[? _sock]
if !is_undefined(_pos){ds_list_delete(_con.HandCards,_pos)}
if !is_undefined(_value){ds_list_delete(_con.HandCards,ds_list_find_index(_con.HandCards,_value))}
}
ds_map_destroy(_map)
