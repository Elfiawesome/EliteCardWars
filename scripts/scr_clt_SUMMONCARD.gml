///scr_clt_SUMMONCARD(buffer)
var buffer=argument0
var socket=buffer_read(buffer,buffer_s16)
var Pos=buffer_read(buffer,buffer_s16)
var _ID=buffer_read(buffer,buffer_s16)

SummonCard(socket_to_instanceid[? socket].Cardholderlist[| Pos],_ID)
//deduct points
with(socket_to_instanceid[? socket]){
    Points-=global.UnitDat_Pt[_ID]
}
