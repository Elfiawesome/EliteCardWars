///ActivateAfterCardSelectionCancel(map)
var map=json_decode(argument0);
map[? "Attacker"] = socket_to_instanceid[? real(map[? "AttackerSock"])].Cardholderlist[| real(map[? "AttackerPos"])]

//run ability
with(map[? "Attacker"]){
    var _no=IsAbilityTrigger(map[? "Attacker"].CardID,AbilityTrigger.AfterCardSelectionCancel)
    if _no!=-1{
    script_execute(global.UnitDat_AbilityScript[map[? "Attacker"].CardID,_no],"")
    }
    var _l=Stats[? "AbilitiesScript"]
    for(var i=0;i<ds_list_size(_l);i++){
        var _id=_l[| i]
        var _no=IsAbilityTrigger(_id,AbilityTrigger.AfterCardSelectionCancel)
        if _no!=-1{
            script_execute(global.UnitDat_AbilityScript[_id,_no],"")
        }
    }
}
//run spells script
with(map[? "Attacker"]){
    var _l=Stats[? "Spells"]
    for(var i=0;i<ds_list_size(_l);i++){//POTENTIAL PROBLEM: IF IT DELETES HALFWAY ERROR YES
        var _map=_l[| i]
        _id=_map[? "ID"]
        var _no=IsSpellTrigger(_id,SpellTrigger.AfterCardSelectionCancel)
        if _no!=-1{
            script_execute(global.SpellDat_SpellScript[_id,_no],map)
        }
    }
}
ds_map_destroy(map)
