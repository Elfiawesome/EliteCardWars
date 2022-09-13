///scr_clt_CASTSPELL(buffer)
var buffer=argument0
var mapstr=buffer_read(buffer,buffer_string)
var _map=json_decode(mapstr)
var socket=_map[? "socket"]
var _ID=_map[? "SpellID"]

CastSpell(_map)
//deduct points
if global.NetworkObj.mysocket!=socket{
    with(socket_to_instanceid[? socket]){
        Points-=global.SpellDat_Pt[_ID]
    }
}


