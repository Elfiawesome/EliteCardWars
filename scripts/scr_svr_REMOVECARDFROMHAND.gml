///scr_svr_REMOVECARDFROMHAND(socket,buffer)
var socket=argument0;
var buffer=argument1;
var mapString=buffer_read(buffer,buffer_string)
svr_RemoveCardFromHand(mapString,socket)
