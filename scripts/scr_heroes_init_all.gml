///scr_heroes_init_all()
var Cur=HeroID.FarCry6_AntonCastillo
scr_hero_init_func(Cur,"Anton Castillo",8,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_FarCry6_AntonCastillo_Intrinsic
global.HeroDat_AbilityTrigger[Cur,1]=AbilityTrigger.UnitSummoned
global.HeroDat_AbilityScript[Cur,1]=scr_heroability_FarCry6_AntonCastillo_UnitSummoned

var Cur=HeroID.CardWars_KillerElfiyan
scr_hero_init_func(Cur,"Killer Elfiyan",5,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.Activate
global.HeroDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_AttackingTurn
global.HeroDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_CardWars_KillerElfiyan_Activate
global.HeroDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.HeroDat_AbilityScript[Cur,1]=scr_heroability_CardWars_KillerElfiyan_Intrinsic
global.HeroDat_CooldownMax[Cur]=3

var Cur=HeroID.CardWars_KingElfiyan
scr_hero_init_func(Cur,"King Elfiyan",10,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_CardWars_KingElfiyan_Intrinsic
global.HeroDat_AbilityTrigger[Cur,1]=AbilityTrigger.UnitSummoned
global.HeroDat_AbilityScript[Cur,1]=scr_heroability_CardWars_KingElfiyan_UnitSummoned

var Cur=HeroID.CardWars_UniversalElfiyan
scr_hero_init_func(Cur,"Universal Elfiyan",14,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_CardWars_UniversalElfiyan_Intrinsic

var Cur=HeroID.CardWars_EngineerPatrick
scr_hero_init_func(Cur,"Engineer Patrick",10,0,spr_Heroes,Cur-1)
global.HeroDat_Slots[Cur]=6

var Cur=HeroID.CardWars_HackerPatrick
scr_hero_init_func(Cur,"Hacker Patrick",10,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.UnitSummoned
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_CardWars_HackerPatrick_UnitSummoned

var Cur=HeroID.CardWars_SargeantPatrick
scr_hero_init_func(Cur,"Sargeant Patrick",10,0,spr_Heroes,Cur-1)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.UnitSummoned
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_CardWars_CardWars_SargeantPatrick_UnitSummoned
global.HeroDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.HeroDat_AbilityScript[Cur,1]=scr_heroability_CardWars_KillerElfiyan_Intrinsic

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
