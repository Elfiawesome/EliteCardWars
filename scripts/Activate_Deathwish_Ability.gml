///Activate_Deathwish_Ability()
if Stats[? "IsAbilityStun"]=false{
    var _no=IsAbilityTrigger(CardID,AbilityTrigger.Deathwish)
    if _no!=-1{
        script_execute(global.UnitDat_AbilityScript[CardID,_no],"")//insert last killer here
    }
}

