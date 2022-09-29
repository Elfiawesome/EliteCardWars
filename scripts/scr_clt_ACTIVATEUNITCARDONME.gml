///scr_clt_ACTIVATEUNITCARDONME(buffer)
var buffer=argument0
var _sock=buffer_read(buffer,buffer_s16)
var _pos=buffer_read(buffer,buffer_s16)
var _selection=buffer_read(buffer,buffer_s16)
var _cardholder=socket_to_instanceid[? _sock].Cardholderlist[| _pos]
ActivateUnitCardOnMe(_cardholder,_selection)
