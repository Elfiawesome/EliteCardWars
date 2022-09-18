///ActivateAbilityTarget(map)
var map=json_decode(argument0);
map[? "Victim"] = socket_to_instanceid[? real(map[? "VictimSock"])].Cardholderlist[| real(map[? "VictimPos"])]//why?
map[? "Attacker"] = socket_to_instanceid[? real(map[? "AttackerSock"])].Cardholderlist[| real(map[? "AttackerPos"])]

//run ability
with(map[? "Attacker"]){
    var _no=IsAbilityTrigger(map[? "Attacker"].CardID,AbilityTrigger.ActivateTarget)
    if _no!=-1{
    script_execute(global.UnitDat_AbilityScript[map[? "Attacker"].CardID,_no],map)
    }
    var _l=Stats[? "AbilitiesScript"]
    for(var i=0;i<ds_list_size(_l);i++){
        var _id=_l[| i]
        var _no=IsAbilityTrigger(_id,AbilityTrigger.ActivateTarget)
        if _no!=-1{
            script_execute(global.UnitDat_AbilityScript[_id,_no],map)
        }
    }
}


