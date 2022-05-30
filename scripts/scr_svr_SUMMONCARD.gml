///scr_svr_SUMMONCARD(socket,buffer)
var socket=argument0;
var buffer=argument1;
var Pos=buffer_read(buffer,buffer_s16)
var CardID=buffer_read(buffer,buffer_s16)
svr_SummonCard(socket,Pos,CardID)
