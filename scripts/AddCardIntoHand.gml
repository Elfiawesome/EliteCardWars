///AddCardIntoHand(MapStr)
var _map=json_decode(argument0);

var _sock=_map[? "socket"]
var _con=global.NetworkObj.socket_to_instanceid[? _sock]
ds_map_delete(_map,"socket")

var _m=ds_map_create();
ds_map_copy(_m,_map)
ds_map_destroy(_map)

_m[? "Identifier"]=global.CardsIdentifier;
ds_list_add(_con.HandCards,json_encode_destroy(_m))


global.CardsIdentifier++

