///GameEvent_cardholders_DealDamageAmt(VictimObj,AttackerObj,Amt)
var Atkr=argument1;
var Vict=argument0;
var amt=argument2;
if Vict.Stats[? "IsImmune"]!=0{exit;}
if Vict.Stats[? "IsSPImmune"]!=0 && IsSPAtk(Atkr.Stats)=true{exit;}
if Vict.Stats[? "IsBAImmune"]!=0 && IsSPAtk(Atkr.Stats)=false{exit;}
Vict.Stats[? "Hp"]-=amt


//Activate Damaged Ability
with(Vict){
    Activate_Damaged_Ability()
}
