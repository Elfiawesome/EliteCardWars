///Activate_Intrinsic_Ability()
if Stats[? "IsAbilityStun"]=false{
    var _no=IsAbilityTrigger(CardID,AbilityTrigger.Intrinsic)
    if _no!=-1{
        script_execute(global.UnitDat_AbilityScript[CardID,_no],"")
    }
}