///GameEvent_cardholders_DealPoisonDamage(VictimObj)
var Vict=argument0;
if Vict.Stats[? "IsImmune"]!=0{exit;}
if Vict.Stats[? "IsSPImmune"]!=0{exit;}
Vict.Stats[? "Hp"]-=Stats[? "PoisonDmg"]

//Activate Damaged Ability
with(Vict){
    Activate_Damaged_Ability()
}
