///CastSpell(map)
var _MainMap=argument0
var _socket=_MainMap[? "socket"]
var _TgtSocket=_MainMap[? "TargetSocket"]
var _con=socket_to_instanceid[? _socket]
var _ID=_MainMap[? "SpellID"]
var _Pos=_MainMap[? "Pos"]
if _Pos!=undefined{//Target unit or target hero
    var _tgtcardholder=socket_to_instanceid[? _TgtSocket].Cardholderlist[| _Pos]
}else{
    var _tgtcardholder=socket_to_instanceid[? _TgtSocket].Hero
}
ds_map_destroy(_MainMap)

//its a new spell
global.SpellsIdentifier++

switch(global.SpellDat_SpellType[_ID]){
    case SpellType.Consumable:
        var _map=ds_map_create();
        _map[? "ID"]=_ID
        scr_spell_json_setup(_map)
        //activate WhenCasted
        with(_tgtcardholder){
            Activate_WhenCasted_Spell(_ID,_map)
        }
        ds_map_destroy(_map)
    break;
    case SpellType.Equipment:
        //adding map into cardholder's/Hero's list
        var _map=ds_map_create();
        _map[? "ID"]=_ID
        scr_spell_json_setup(_map)
        ds_list_add(_tgtcardholder.Stats[? "Spells"],_map)
        ds_list_mark_as_map(_tgtcardholder.Stats[? "Spells"],ds_list_size(_tgtcardholder.Stats[? "Spells"])-1)
        //activate
        with(_tgtcardholder){
            var _no=IsSpellTrigger(_ID,SpellTrigger.StartAndEndOfTurn)
            if _no!=-1{
                script_execute(global.SpellDat_SpellScript[_ID,_no],_map)
            }
        }
    break;
    case SpellType.Weather:
        var spell=global.SpellSys.SpellsQueue[SpellType.Weather]
        var _map=ds_map_create();
        _map[? "ID"]=_ID
        _map[? "Con"]=socket_to_instanceid[? _socket]
        _map[? "TgtCon"]=socket_to_instanceid[? _TgtSocket]
        _map[? "Pos"]=_Pos
        scr_spell_json_setup(_map)
        ds_list_add(spell,_map)
        ds_list_mark_as_map(spell,ds_list_size(spell)-1)
    break;
}
if global.SpellDat_SpellType[_ID]=SpellType.Consumable{

}


//activate card animation
var card=instance_create(0,0,obj_spell_animation);
card.CardID=_ID

