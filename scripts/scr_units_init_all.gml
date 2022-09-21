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

//SouthPark
var Cur=UnitID.SouthPark_AWESOMEO4000
scr_units_init_func(Cur,"A.W.E.S.O.m.-O 4000",40,10,16,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_AWESOMEO4000_ActivateTarget
global.UnitDat_CooldownMax[Cur]=2
var Cur=UnitID.SouthPark_BountyHunterKyle
scr_units_init_func(Cur,"Bounty Hunter Kyle",12,14,12,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Kill
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_BountyHunterKyle_Kill
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Damaging
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_BountyHunterKyle_Damaging
var Cur=UnitID.SouthPark_BuccaneerBebe
scr_units_init_func(Cur,"Buccaneer Bebe",10,10,9,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Kill
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_BuccaneerBebe_Kill
var Cur=UnitID.SouthPark_CanadianKnightIke
scr_units_init_func(Cur,"Canadian Knight Ike",5,8,3,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_CanadianKnightIke_Intrinsic
var Cur=UnitID.SouthPark_CaptainDiabetes
scr_units_init_func(Cur,"Captain Diabetes",7,8,3,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_CaptainDiabetes_Intrinsic
global.UnitDat_CooldownMax[Cur]=1
var Cur=UnitID.SouthPark_ChaosHamsters
scr_units_init_func(Cur,"Chaos Hamsters",7,5,3,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_StatusEffectSpellsImmune

var Cur=UnitID.SouthPark_DarkAngelRed//needs some fixing How does a warcry target work?
scr_units_init_func(Cur,"Dark Angel Red",8,8,9,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyAllies
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_DarkAngelRed_ActivateTarget//ability does not trigger deathwish
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.AfterCardSelection
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_DarkAngelRed_AfterCardSelection
global.UnitDat_AbilityTrigger[Cur,2]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,2]=scr_ability_SouthPark_DarkAngelRed_Intrinsic

var Cur=UnitID.SouthPark_DarkMageCraig
scr_units_init_func(Cur,"Dark Mage Craig",12,7,10,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.SpreadAtk]=true
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_DarkMageCraig_Warcry
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
var Cur=UnitID.SouthPark_DoctorTimothy
scr_units_init_func(Cur,"Doctor Timothy",18,5,10,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_AttackingTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_SouthPark_DoctorTimothy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_DoctorTimothy_ActivateTarget
global.UnitDat_CooldownMax[Cur]=1
var Cur=UnitID.SouthPark_EnforcerJimmy
scr_units_init_func(Cur,"Enforcer Jimmy",10,5,8,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_EnforcerJimmy_Intrinsic

var Cur=UnitID.SouthPark_Fastpass
scr_units_init_func(Cur,"Fastpsas",15,10,10,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_Firkle
scr_units_init_func(Cur,"Firkle",10,5,6,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_Henrietta
scr_units_init_func(Cur,"Henrietta",16,10,14,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_HermesKenny
scr_units_init_func(Cur,"Hermes Kenny",5,8,4,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_IncanCraig
scr_units_init_func(Cur,"Incan Craig",20,10,10,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_InuitKenny
scr_units_init_func(Cur,"Innuit Kenny",6,9,5,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_KyleOfTheDrowElves
scr_units_init_func(Cur,"Kyle of the Drow Elves",15,10,12,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_Manbearpig
scr_units_init_func(Cur,"Manbearpig",50,30,25,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_MrHankey
scr_units_init_func(Cur,"Mr. Hankey",16,4,12,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_Nathan
scr_units_init_func(Cur,"Nathan",12,10,12,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_PaladinButters
scr_units_init_func(Cur,"Paladin Butters",8,15,10,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_PrincessKenny
scr_units_init_func(Cur,"Princess Kenny",4,7,4,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_Robobebe
scr_units_init_func(Cur,"Robo Bebe",10,10,9,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_RogueToken
scr_units_init_func(Cur,"Rogue Token",14,5,10,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_ShamanToken
scr_units_init_func(Cur,"Shaman Token",14,4,10,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_SheildmaidenWendy
scr_units_init_func(Cur,"Sheildmaiden Wendy",18,12,12,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_StanofManyMoonos
scr_units_init_func(Cur,"Stan of Many Moons",10,15,15,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_Tupperware
scr_units_init_func(Cur,"Tupperware",15,10,10,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_WoodlandCritters
scr_units_init_func(Cur,"Woodland Critters",16,6,12,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_YouthPastorCraig
scr_units_init_func(Cur,"Youth Pastor Craig",16,4,8,spr_cards,Cur-1)
var Cur=UnitID.SouthPark_ZenCartman
scr_units_init_func(Cur,"Zen Cartman",45,0,15,spr_cards,Cur-1)
