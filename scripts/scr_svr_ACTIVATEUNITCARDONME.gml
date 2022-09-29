///scr_svr_ACTIVATEUNITCARDONME(socket,buffer)
var socket=argument0;
var buffer=argument1;
var _sock=buffer_read(buffer,buffer_s16)
var _pos=buffer_read(buffer,buffer_s16)
var _selection=buffer_read(buffer,buffer_s16)
svr_ActivateUnitCardOnMe(_sock,_pos,_selection)
