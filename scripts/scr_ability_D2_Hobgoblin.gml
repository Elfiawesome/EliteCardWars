///scr_ability_D2_Hobgoblin()
var MapStr=argument0;

if Stats[? "AbilityCooldown"]=0{
    Stats[? "Hp"]+=4
    Stats[? "IsImmune"]=1
    Stats[? "IsFrozen"]=1
    Stats[? "AbilityCooldown"]=-1
}
