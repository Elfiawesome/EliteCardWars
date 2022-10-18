///HeroActivateAbility(map)
var map=json_decode(argument0);
map[? "Attacker"] = socket_to_instanceid[? real(map[? "AttackerSock"])].Hero

//run ability
with(map[? "Attacker"]){
    var _no=IsHeroAbilityTrigger(map[? "Attacker"].CardID,AbilityTrigger.Activate)
    if _no!=-1{
    script_execute(global.HeroDat_AbilityScript[map[? "Attacker"].CardID,_no],map)
    }
}
