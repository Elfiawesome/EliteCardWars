///Activate_Intrinsic_HeroAbility()
if Stats[? "IsAbilityStun"]=false{
    var _no=IsHeroAbilityTrigger(CardID,AbilityTrigger.Warcry)
    if _no!=-1{
        script_execute(global.HeroDat_AbilityScript[CardID,_no],"")
    }
}
