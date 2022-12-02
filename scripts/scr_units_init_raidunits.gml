//raid bosses
var _wt=WorldType.RaidExclusive
var Cur=UnitID.Raid_VaultOfGlass_AtheonTimesConflux
scr_units_init_func(Cur,"Atheon Time's Conflux",_wt,95,30,65,spr_cards_raid,0)

var Cur=UnitID.Raid_VaultOfGlass_Oracle
scr_units_init_func(Cur,"Oracle",_wt,75,0,10,spr_cards_raid,1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_Raid_VaultOfGlass_Oracle_Intrinsic
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.AfterDamaged
global.UnitDat_AbilityScript[Cur,1]=scr_ability_Raid_VaultOfGlass_Oracle_AfterDamaged
global.UnitDat_CooldownMax[Cur]=7

var Cur=HeroID.Raid_VaultOfGlass_Hero
scr_hero_init_func(Cur,"Vault Of Glass",10,0,spr_heroes_raid,0)
global.HeroDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.HeroDat_AbilityScript[Cur,0]=scr_heroability_Raid_VaultOfGlass_Hero_Warcry
global.HeroDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.HeroDat_AbilityScript[Cur,1]=scr_heroability_Raid_VaultOfGlass_Hero_Intrinsic

