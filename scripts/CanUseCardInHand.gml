///CanUseCardInHand(CardString)
//set default value
var _canusecard=true
//value from argument
var _cardmapStr=argument0
//decode
var _cardmap=json_decode(_cardmapStr);
//checks
if ds_map_exists(_cardmap,"Locked") && _cardmap[? "Locked"]!=0{
    _canusecard=false
}
ds_map_destroy(_cardmap)

return _canusecard

