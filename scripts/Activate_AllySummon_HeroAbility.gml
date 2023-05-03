///Activate_AllySummon_HeroAbility(Summoned Object)
if Stats[? "IsAbilityStun"]=false{
    var _no=IsHeroAbilityTrigger(CardID,AbilityTrigger.AllySummoned)
    if _no!=-1{
        script_execute(global.HeroDat_AbilityScript[CardID,_no],argument0)
    }
}
