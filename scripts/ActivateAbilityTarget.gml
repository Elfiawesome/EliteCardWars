///ActivateAbilityTarget(map)
var map=json_decode(argument0);
map[? "Victim"] = socket_to_instanceid[? real(map[? "VictimSock"])].Cardholderlist[| real(map[? "VictimPos"])]
map[? "Attacker"] = socket_to_instanceid[? real(map[? "AttackerSock"])].Cardholderlist[| real(map[? "AttackerPos"])]

//run ability
with(map[? "Attacker"]){
    script_execute(global.UnitDat_AbilityScript[map[? "Attacker"].CardID],map)
}

