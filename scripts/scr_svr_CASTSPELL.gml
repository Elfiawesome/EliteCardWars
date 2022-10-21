///scr_svr_CASTSPELL(socket,buffer)
var socket=argument0;
var buffer=argument1;
var mapstr=buffer_read(buffer,buffer_string)

var _map=json_decode(mapstr)
var socket=_map[? "socket"]
var _ID=_map[? "SpellID"]

//deduct points
with(socket_to_instanceid[? socket]){
    Points-=GetPointDeductionValue(global.SpellDat_Pt[_ID])
}
svr_CastSpell(_map)

