///scr_units_init_func(CardID,Name,world,HP,ATK,Pt,Sprite,Image)
global.UnitDat_Name[argument0]=argument1
global.UnitDat_WorldType[argument0]=argument2
global.UnitDat_Hp[argument0]=argument3
global.UnitDat_Atk[argument0]=argument4
global.UnitDat_Pt[argument0]=argument5
global.UnitDat_Sprite[argument0]=argument6
global.UnitDat_Image[argument0]=argument7

//other dats
global.UnitDat_AttackType[argument0,UnitAttackType.CrossAtk]=false
global.UnitDat_AttackType[argument0,UnitAttackType.SpreadAtk]=false
global.UnitDat_AttackType[argument0,UnitAttackType.Sweep_Atk]=false
global.UnitDat_AttackType[argument0,UnitAttackType.Pierce_Atk]=false
global.UnitDat_AttackType[argument0,UnitAttackType.Splash_Atk]=false;global.UnitDat_AttackType_SplashDmg[argument0]=0
global.UnitDat_AttackType[argument0,UnitAttackType.Sp_Atk]=false
global.UnitDat_CooldownMax[argument0]=0
global.UnitDat_ImmuneCapable[argument0]=false

//ability
global.UnitDat_AbilityTrigger[argument0,0]=AbilityTrigger.Default
global.UnitDat_AbilityTargetSelectCheck[argument0]=scr_ability_Checks_none
global.UnitDat_AbilityTargetCheck[argument0,0]=scr_ability_Checks_none
global.UnitDat_AbilityScript[argument0,0]=scr_ability_none
