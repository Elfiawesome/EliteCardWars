enum UnitID{
    D2_AtheonTimesConflux=1,
    D2_Goblin,
    D2_Harpy,
    D2_Hobgoblin,
    D2_Psion,
    D2_Servitor,
    D2_Wyvern,
    
    FanFron_AppleBat,
    FanFron_FantasticDragon,
    FanFron_ForestWalker,
    UnitID_MAX,
}
enum HeroID{
    Unturned_CaptainSydney=1,
    RA3_PremierAnatolyIlychCherdenko,
    D2_Zavala,
    HeroID_MAX,
}
enum UnitAttackType{
    CrossAtk,
    SpreadAtk,
    Sweep_Atk,
    Pierce_Atk,
    Sp_Atk,
}
enum AbilityTrigger{
    Default,//default not used
    Passive,//not sure what this supposed to do
    Activate,
    ActivateTarget,
    Intrinsic,//activated when summoned and updated on every start of the round
    Deathwish,//activated when dead
    Warcry,//activated when Summoned [Not yet implemented]
    Kill,//activated Each kill [Not yet implemented]
    Damaged,//activated when damaged
}


global.UnitDataMap=ds_map_create()
ds_map_destroy(global.UnitDataMap)

var Cur=UnitID.D2_AtheonTimesConflux
scr_units_init_func(Cur,"Atheon Time's Conflux",45,25,24,spr_cards,Cur-1)
var Cur=UnitID.D2_Goblin
scr_units_init_func(Cur,"Goblin",10,6,3,spr_cards,Cur-1)
var Cur=UnitID.D2_Harpy
scr_units_init_func(Cur,"Harpy",3,1,1,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SPImmune

var Cur=UnitID.D2_Hobgoblin
scr_units_init_func(Cur,"Hobgoblin",8,15,12,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Damaged
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Hobgoblin

var Cur=UnitID.D2_Psion
scr_units_init_func(Cur,"Psion",5,15,12,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Psion

var Cur=UnitID.D2_Servitor
scr_units_init_func(Cur,"Servitor",14,10,18,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyAllies
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Servitor_ActivateTarget
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,1]=scr_ability_D2_Servitor_Intrinsic

var Cur=UnitID.D2_Wyvern
scr_units_init_func(Cur,"Wyvern",25,15,14,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.Sweep_Atk]=true

var Cur=UnitID.FanFron_AppleBat
scr_units_init_func(Cur,"Apple Bat",5,1,1,spr_cards,Cur-1)
var Cur=UnitID.FanFron_FantasticDragon
scr_units_init_func(Cur,"Apple Bat",5,1,1,spr_cards,Cur-1)
var Cur=UnitID.FanFron_ForestWalker
scr_units_init_func(Cur,"Apple Bat",15,5,8,spr_cards,Cur-1)


//Heroes
var Cur=HeroID.Unturned_CaptainSydney
scr_hero_init_func(Cur,"Captain Sydney",10,0,spr_Heroes,Cur-1)
var Cur=HeroID.RA3_PremierAnatolyIlychCherdenko
scr_hero_init_func(Cur,"Premier AnatolyIlych Cherdenko",10,0,spr_Heroes,Cur-1)
var Cur=HeroID.D2_Zavala
scr_hero_init_func(Cur,"Zavala",10,0,spr_Heroes,Cur-1)


//how many points at a turn
global.TurnPointArray[0]=5
global.TurnPointArray[1]=6
global.TurnPointArray[2]=8
global.TurnPointArray[3]=11
global.TurnPointArray[4]=15
global.TurnPointArray[5]=20
global.TurnPointArray[6]=26
global.TurnPointArray[7]=33
global.TurnPointArray[8]=41
global.TurnPointArray[9]=50
