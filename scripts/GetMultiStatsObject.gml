///GetMultiStatsObject(string)
var _s=argument0
var _r=0
var _readable=true
var _at=-1
for(i=1;i<string_length(_s);i++){
    if string_char_at(_s,i)="_"{
        _at=i
        break;
    }
}
if _at=-1{_readable=false}
if _readable{
    var _sock=string_copy(_s,1,_at-1)
    var _pos=string_copy(_s,_at+1,string_length(_s)-(_at))
    var _r=global.NetworkObj.socket_to_instanceid[? real(_sock)].Cardholderlist[| real(_pos)]
}else{
    _r=noone
}
return _r

