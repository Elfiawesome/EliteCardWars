///scr_heroes_init_all()
var Cur=HeroID.Unturned_CaptainSydney
scr_hero_init_func(Cur,"Captain Sydney",10,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_Unturned_CaptainSydney_Intrinsic
global.HeroDat_AbilityTrigger[Cur,1]=AbilityTrigger.ActivateTarget
global.HeroDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_Unturned_CaptainSydney
global.HeroDat_AbilityTargetCheck[Cur,1]=scr_ability_Checks_Unturned_CaptainSydney
global.HeroDat_AbilityScript[Cur,1]=scr_heroability_Unturned_CaptainSydney_ActivateTarget

var Cur=HeroID.RA3_PremierAnatolyIlychCherdenko
scr_hero_init_func(Cur,"Premier AnatolyIlych Cherdenko",10,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.Activate
global.HeroDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_NotBattlefieldEmpty_PlayerTurns
global.HeroDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_RA3_PremierAnatolyIlychCherdenko_Activate

var Cur=HeroID.D2_Zavala
scr_hero_init_func(Cur,"Zavala",10,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.Activate
global.HeroDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_NotBattlefieldEmpty_PlayerTurns
global.HeroDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_D2_Zavala_Activate
global.HeroDat_CooldownMax[Cur]=3

var Cur=HeroID.Tutorial_Herald
scr_hero_init_func(Cur,"Herald",2,0,spr_Heroes,HeroID.D2_Zavala-1)
