///GameEvent_cardholders_DealSplashDamage(VictimObj,AttackerObj)
var Atkr=argument1;
var Vict=argument0;
if Vict.Stats[? "IsImmune"]!=0{exit;}
if Vict.Stats[? "IsSPImmune"]!=0 && IsSPAtk(Atkr.Stats)=true{exit;}
if Vict.Stats[? "IsBAImmune"]!=0 && IsSPAtk(Atkr.Stats)=false{exit;}
var dmgamt=(Atkr.Stats[? "SplashAtk"]*GetIntakeMultiplier(Atkr,Vict)-Vict.Stats[? "Def"])
if sign(dmgamt)=1{
    Vict.Stats[? "Hp"]-=dmgamt
}
with(Vict){player_con_CardholdersUpdateMultiStats()}

//Activate Damaged Ability
with(Vict){
    Activate_Damaged_Ability()
}
