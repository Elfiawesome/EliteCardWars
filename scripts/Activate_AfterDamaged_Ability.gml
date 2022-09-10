///Activate_AfterDamaged_Ability()
if Stats[? "IsAbilityStun"]=false{
    if IsAbilityTrigger(CardID,AbilityTrigger.AfterDamaged)!=-1{
        var _no=IsAbilityTrigger(CardID,AbilityTrigger.AfterDamaged)
        script_execute(global.UnitDat_AbilityScript[CardID,_no],"")
    }
}
