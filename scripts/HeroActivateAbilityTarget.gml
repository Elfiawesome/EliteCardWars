///ActivateAbilityTarget(map)
var map=json_decode(argument0);
map[? "Victim"] = socket_to_instanceid[? real(map[? "VictimSock"])].Cardholderlist[| real(map[? "VictimPos"])]//why?
map[? "Attacker"] = socket_to_instanceid[? real(map[? "AttackerSock"])].Hero

//run ability
with(map[? "Attacker"]){
    var _no=IsHeroAbilityTrigger(map[? "Attacker"].CardID,AbilityTrigger.ActivateTarget)
    if _no!=-1{
    script_execute(global.HeroDat_AbilityScript[map[? "Attacker"].CardID,_no],map)
    }
}
