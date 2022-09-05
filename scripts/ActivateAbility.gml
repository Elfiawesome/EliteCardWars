///ActivateAbility(map)
var map=json_decode(argument0);
map[? "Attacker"] = socket_to_instanceid[? real(map[? "AttackerSock"])].Cardholderlist[| real(map[? "AttackerPos"])]



//run ability
with(map[? "Attacker"]){
    var _no=IsAbilityTrigger(map[? "Attacker"].CardID,AbilityTrigger.Activate)
    script_execute(global.UnitDat_AbilityScript[map[? "Attacker"].CardID,_no],map)
}


