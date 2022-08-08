///Activate_Damaged_Ability()
if Stats[? "IsAbilityStun"]=false{
    if IsAbilityTrigger(CardID,AbilityTrigger.Damaged)!=-1{
        var _no=IsAbilityTrigger(CardID,AbilityTrigger.Damaged)
        script_execute(global.UnitDat_AbilityScript[CardID,_no],"")
    }
}
