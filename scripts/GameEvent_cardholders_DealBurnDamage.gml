///GameEvent_cardholders_DealBurnDamage(VictimObj)
var Vict=argument0;
if Vict.Stats[? "IsImmune"]!=0{exit;}
if Vict.Stats[? "IsSPImmune"]!=0{exit;}
Vict.Stats[? "Hp"]-=Stats[? "BurnDmg"]
player_con_CardholdersUpdateMultiStats()

//Activate Damaged Ability
with(Vict){
    Activate_Damaged_Ability()
}
