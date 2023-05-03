///Activate_UnitSummon_HeroAbility(Summoned Object)
if Stats[? "IsAbilityStun"]=false{
    var _no=IsHeroAbilityTrigger(CardID,AbilityTrigger.UnitSummoned)
    if _no!=-1{
        script_execute(global.HeroDat_AbilityScript[CardID,_no],argument0)
    }
}
