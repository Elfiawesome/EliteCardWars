///CastSpell(map)
var _MainMap=argument0
var _socket=_MainMap[? "socket"]
var _con=socket_to_instanceid[? _socket]
var _ID=_MainMap[? "SpellID"]
var _Pos=_MainMap[? "Pos"]
if _Pos!=undefined{//Target unit or target hero
    var _cardholder=socket_to_instanceid[? _socket].Cardholderlist[| _Pos]
}else{
    var _cardholder=socket_to_instanceid[? _socket].Hero
}
var _TgtSocket=_MainMap[? "TargetSocket"]
ds_map_destroy(_MainMap)

switch(global.SpellDat_SpellType[_ID]){
    case SpellType.Consumable:
    break;
    case SpellType.Equipment:
        //adding map into cardholder's/Hero's list
        var _map=ds_map_create();
        _map[? "ID"]=_ID
        scr_spell_json_setup(_map)
        ds_list_add(_cardholder.Stats[? "Spells"],_map)
        ds_list_mark_as_map(_cardholder.Stats[? "Spells"],ds_list_size(_cardholder.Stats[? "Spells"])-1)
    break;
    case SpellType.Weather:
        var spell=global.SpellSys.SpellsQueue[SpellType.Weather]
        var _map=ds_map_create();
        _map[? "ID"]=_ID
        _map[? "TgtCon"]=socket_to_instanceid[? _TgtSocket]
        scr_spell_json_setup(_map)
        ds_list_add(spell,_map)
        ds_list_mark_as_map(spell,ds_list_size(spell)-1)
    break;
}

if global.SpellDat_SpellType[_ID]=SpellType.Consumable{
    //activate WhenCasted
    with(_cardholder){
        Activate_WhenCasted_Spell(_ID)
    }
}

//activate card animation
var card=instance_create(0,0,obj_spell_animation);
card.CardID=_ID

