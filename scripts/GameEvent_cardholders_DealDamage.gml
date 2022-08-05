///GameEvent_cardholders_DealDamage(VictimObj,AttackerObj)
var Atkr=argument1;
var Vict=argument0;
if Vict.Stats[? "IsImmune"]=false{
    Vict.Stats[? "Hp"]-=Atkr.Stats[? "Atk"]
}

//Activate Damaged Ability
with(Vict){
    if Stats[? "IsAbilityStun"]=false{
        if global.UnitDat_AbilityTrigger[CardID]=AbilityTrigger.Damaged{
            script_execute(global.UnitDat_AbilityScript[CardID],"")
        }
    }
}
