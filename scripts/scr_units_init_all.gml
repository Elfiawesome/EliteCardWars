//Destiny 2
var Cur=UnitID.D2_AtheonTimesConflux//**Ability not yet done!
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
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Psion
global.UnitDat_CooldownMax[Cur]=2

var Cur=UnitID.D2_Servitor
scr_units_init_func(Cur,"Servitor",14,10,18,spr_cards,Cur-1);global.UnitDat_ImmuneCapable[Cur]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyAllies_NoImmuneCapable
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Servitor_ActivateTarget
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,1]=scr_ability_D2_Servitor_Intrinsic
global.UnitDat_AbilityTrigger[Cur,2]=AbilityTrigger.AfterDamaged
global.UnitDat_AbilityScript[Cur,2]=scr_ability_D2_Servitor_AfterDamaged

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
scr_units_init_func(Cur,"The Savior",20,15,12,spr_cards,Cur-1)//**Ability not yet done! No zombie yet?

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
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_Imitator_Warcry
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.AfterCardSelection
global.UnitDat_AbilityScript[Cur,1]=scr_ability_PlantVsZombies_Imitator_AfterCardSelection
var Cur=UnitID.PlantVsZombies_MagnifyingGrass
scr_units_init_func(Cur,"Magnifying Grass",1,0,5,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_MagnifyingGrass_Warcry
var Cur=UnitID.PlantVsZombies_Seedling
scr_units_init_func(Cur,"Seedling",1,0,2,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_Seedling_Intrinsic

//Red Alert 3
var Cur=UnitID.RedAlert3_ApocalypseTank
scr_units_init_func(Cur,"Apocalypse Tank",30,20,20,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Damaging
global.UnitDat_AbilityScript[Cur,0]=scr_ability_RedAlert3_ApocalypseTank_Damaging
var Cur=UnitID.RedAlert3_Conscript
scr_units_init_func(Cur,"Conscript",5,2,2,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
var Cur=UnitID.RedAlert3_Dreadnought
scr_units_init_func(Cur,"Dreadnought",30,30,20,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
var Cur=UnitID.RedAlert3_FutureTankX1
scr_units_init_func(Cur,"The Future Tank X-1",20,30,22,spr_cards,Cur-1)
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_AttackingTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_RedAlert3_FutureTankX1
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityScript[Cur,0]=scr_ability_RedAlert3_FutureTankX1_ActivateTarget
global.UnitDat_CooldownMax[Cur]=3
var Cur=UnitID.RedAlert3_GigaFortress
scr_units_init_func(Cur,"Giga Fortress",40,25,22,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Pierce_Atk]=true
var Cur=UnitID.RedAlert3_HammerTank
scr_units_init_func(Cur,"Hammer Tank",12,5,12,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Kill
global.UnitDat_AbilityScript[Cur,0]=scr_ability_RedAlert3_HammerTank_Kill
var Cur=UnitID.RedAlert3_Kirov
scr_units_init_func(Cur,"Kirov",30,25,22,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Splash_Atk]=true
global.UnitDat_AttackType_SplashDmg[Cur]=5
var Cur=UnitID.RedAlert3_MigFighter
scr_units_init_func(Cur,"Mig Fighter",7,5,2,spr_cards,Cur-1)
var Cur=UnitID.RedAlert3_MirageTank
scr_units_init_func(Cur,"Mirage Tank",10,16,14,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_BAImmune
var Cur=UnitID.RedAlert3_ShogunExecutioner
scr_units_init_func(Cur,"Shogun Executioner",45,30,25,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Splash_Atk]=true
global.UnitDat_AttackType_SplashDmg[Cur]=5
var Cur=UnitID.RedAlert3_Spy
scr_units_init_func(Cur,"Spy",15,0,8,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_RedAlert3_Spy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_RedAlert3_Spy_ActivateTarget
var Cur=UnitID.RedAlert3_Stingray
scr_units_init_func(Cur,"Stingray",16,3,10,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.SpreadAtk]=true
var Cur=UnitID.RedAlert3_V4RocketLauncher
scr_units_init_func(Cur,"V4 Rocket Launcher",10,30,18,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true

