///AddCardIntoHand(MapStr)
var _map=json_decode(argument0);

var _sock=_map[? "socket"]
if global.NetworkObj.mysocket!=_sock{
var _con=global.NetworkObj.socket_to_instanceid[? _sock]
var _ID=_map[? "ID"]
var _CardType=_map[? "Type"]
var _m=ds_map_create();_m[? "ID"]=_ID;_m[? "Type"]=_CardType;ds_list_add(_con.HandCards,json_encode_destroy(_m))
}
ds_map_destroy(_map)
