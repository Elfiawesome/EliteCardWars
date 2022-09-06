//Destiny 2
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
global.UnitDat_CooldownMax[Cur]=2

var Cur=UnitID.D2_Servitor
scr_units_init_func(Cur,"Servitor",14,10,18,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyAllies
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Servitor_ActivateTarget
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,1]=scr_ability_D2_Servitor_Intrinsic

var Cur=UnitID.D2_Wyvern
scr_units_init_func(Cur,"Wyvern",25,15,14,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.Sweep_Atk]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Activate
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Wyvern_Activate

//Fantastic Frontier
var Cur=UnitID.FanFron_AppleBat
scr_units_init_func(Cur,"Apple Bat",5,1,1,spr_cards,Cur-1)
var Cur=UnitID.FanFron_FantasticDragon
scr_units_init_func(Cur,"Fantastic Dragon",25,10,18,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Pierce_Atk]=true
var Cur=UnitID.FanFron_ForestWalker
scr_units_init_func(Cur,"Forest Walker",15,5,8,spr_cards,Cur-1)

//hexeria
var Cur=UnitID.Hexeria_EliteBandit
scr_units_init_func(Cur,"Elite Bandit",8,8,3,spr_cards,Cur-1)

//Madness Combat
var Cur=UnitID.MadnessCombat_Auditor
scr_units_init_func(Cur,"Auditor",35,25,20,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.FriendDeath
global.UnitDat_AbilityScript[Cur,0]=scr_ability_MadnessCombat_Auditor_FriendDeath

var Cur=UnitID.MadnessCombat_HankJwimbleton
scr_units_init_func(Cur,"Hank J. Wimbleton",10,5,3,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Deathwish
global.UnitDat_AbilityScript[Cur,0]=scr_ability_MadnessCombat_HankJwimbleton_Deathwish

var Cur=UnitID.MadnessCombat_MagAgent
scr_units_init_func(Cur,"Mag Agent",25,15,10,spr_cards,Cur-1)
var Cur=UnitID.MadnessCombat_MagHank
scr_units_init_func(Cur,"Mag Agent",25,20,15,spr_cards,Cur-1)
var Cur=UnitID.MadnessCombat_TheSavior
scr_units_init_func(Cur,"The Savior",20,15,12,spr_cards,Cur-1)

//Plant VS Zombies
var Cur=UnitID.PlantVsZombies_AstroVera
scr_units_init_func(Cur,"Astro Vera",10,10,10,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_AstroVera_Warcry
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,1]=scr_ability_PlantVsZombies_AstroVera_Intrinsic
var Cur=UnitID.PlantVsZombies_CobCannon
scr_units_init_func(Cur,"Cob Cannon",20,20,20,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.SpreadAtk]=true
var Cur=UnitID.PlantVsZombies_DoubledMint
scr_units_init_func(Cur,"Doubled Mint",2,1,2,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_DoubledMint_Intrinsic
var Cur=UnitID.PlantVsZombies_Imitator
scr_units_init_func(Cur,"Imitator",1,0,1,spr_cards,Cur-1)
var Cur=UnitID.PlantVsZombies_MagnifyingGrass
scr_units_init_func(Cur,"Magnifying Grass",1,0,5,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_MagnifyingGrass_Warcry
var Cur=UnitID.PlantVsZombies_Seedling
scr_units_init_func(Cur,"Seedling",1,0,2,spr_cards,Cur-1)

