///scr_clt_TRANSFORMCARDHOLDER()
var buffer=argument0;
var DatMapString=buffer_read(buffer,buffer_string);
var _map=json_decode(DatMapString);
var _holder=socket_to_instanceid[? _map[? "Sock"]].Cardholderlist[| _map[? "Pos"]]
with(_holder){
    GameEvent_cardholders_Transform(_map[? "Selection"])
}
