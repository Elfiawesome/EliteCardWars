///scr_svr_PING(socket,buffer)
var socket=argument0;
var buffer=argument1;

var _inst=socket_to_instanceid[? socket];
//set this socket's ping as such:
_inst.Ping=current_time-LastServerPinged
_inst.HasPinged=true
        
