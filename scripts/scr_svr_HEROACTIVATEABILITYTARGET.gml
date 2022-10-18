///scr_svr_HEROACTIVATEABILITYTARGET(socket,buffer)
var socket=argument0;
var buffer=argument1;
var mapString=buffer_read(buffer,buffer_string)
svr_HeroActivateAbilityTarget(mapString)
