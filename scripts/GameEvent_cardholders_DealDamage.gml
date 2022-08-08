///GameEvent_cardholders_DealDamage(VictimObj,AttackerObj)
var Atkr=argument1;
var Vict=argument0;
if Vict.Stats[? "IsImmune"]!=0{exit;}
if Vict.Stats[? "IsSPImmune"]!=0 && IsSPAtk(Atkr.Stats)=true{exit;}
if Vict.Stats[? "IsBAImmune"]!=0 && IsSPAtk(Atkr.Stats)=false{exit;}
Vict.Stats[? "Hp"]-=Atkr.Stats[? "Atk"]


//Activate Damaged Ability
with(Vict){
    Activate_Damaged_Ability()
}
