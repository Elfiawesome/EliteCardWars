///IsMiddleUnit(Pos,Cardholderlist)
var _p=argument0
var _chl=argument1
var _mp=(ds_list_size(argument1)-1)/2
var _r=false
if _p=floor(_mp){
    _r=true
}
return _r
