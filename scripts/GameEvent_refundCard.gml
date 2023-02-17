//GameEvent_refundCard(refunder socket, cardID, CustomMap [str])
var _refundersocket = argument0
var _CardID = argument1
var _customMap = argument2

if _refundersocket=global.NetworkObj.mysocket{
    with(global.NetworkObj.socket_to_instanceid[? _refundersocket]){
        var _card=GameEvent_create_card(_CardID,0)
    }
}
if _customMap=""{
    var _m=ds_map_create();
    _m[? "socket"]=_refundersocket
    _m[? "ID"]=_CardID
    _m[? "Type"]=0
    _customMap=json_encode_destroy(_m);
}
AddCardIntoHand(_customMap)
