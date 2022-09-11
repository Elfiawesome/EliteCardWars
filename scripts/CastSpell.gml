///CastSpell(map)
var _MainMap=argument0
var _socket=_MainMap[? "socket"]
var _Pos=_MainMap[? "Pos"]
var _cardholder=socket_to_instanceid[? _socket].Cardholderlist[| _Pos]
var _ID=_MainMap[? "SpellID"]
ds_map_destroy(_MainMap)

//adding map into list
var _map=ds_map_create();
_map[? "ID"]=_ID
ds_list_add(_cardholder.Stats[? "Spells"],_map)
ds_list_mark_as_map(_cardholder.Stats[? "Spells"],ds_list_size(_cardholder.Stats[? "Spells"])-1)

//activate WhenCasted
var _m=ds_map_create();
_m[? "Target"]=_cardholder
var _no=IsSpellTrigger(_ID,SpellTrigger.WhenCasted)
if _no!=-1{
    script_execute(global.SpellDat_SpellScript[_ID,_no],_m)
}

