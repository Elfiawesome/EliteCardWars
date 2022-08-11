///Activate_FriendDeath_Ability()
if Stats[? "IsAbilityStun"]=false{
    if IsAbilityTrigger(CardID,AbilityTrigger.FriendDeath)!=-1{
        var _no=IsAbilityTrigger(CardID,AbilityTrigger.FriendDeath)
        script_execute(global.UnitDat_AbilityScript[CardID,_no],"")
    }
}
