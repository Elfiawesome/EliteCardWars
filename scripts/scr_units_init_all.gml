//Destiny 2
var _wt=WorldType.Destiny2
var Cur=UnitID.D2_AtheonTimesConflux//**Ability not yet done!
scr_units_init_func(Cur,"Atheon Time's Conflux",_wt,45,25,24,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_AtheonTimesConflux_ActivateTarget

global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,1]=scr_ability_D2_AtheonTimesConflux_Intrinsic

var Cur=UnitID.D2_Goblin
scr_units_init_func(Cur,"Goblin",_wt,10,6,3,spr_cards,Cur-1)
var Cur=UnitID.D2_Harpy
scr_units_init_func(Cur,"Harpy",_wt,3,1,1,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SPImmune

var Cur=UnitID.D2_Hobgoblin
scr_units_init_func(Cur,"Hobgoblin",_wt,8,15,12,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Damaged
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Hobgoblin

var Cur=UnitID.D2_Psion
scr_units_init_func(Cur,"Psion",_wt,5,15,12,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Psion
global.UnitDat_CooldownMax[Cur]=2

var Cur=UnitID.D2_Servitor
scr_units_init_func(Cur,"Servitor",_wt,14,10,18,spr_cards,Cur-1);global.UnitDat_ImmuneCapable[Cur]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyAllies_NoImmuneCapable
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Servitor_ActivateTarget
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,1]=scr_ability_D2_Servitor_Intrinsic
global.UnitDat_AbilityTrigger[Cur,2]=AbilityTrigger.AfterDamaged
global.UnitDat_AbilityScript[Cur,2]=scr_ability_D2_Servitor_AfterDamaged

var Cur=UnitID.D2_Wyvern
scr_units_init_func(Cur,"Wyvern",_wt,25,15,14,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.Sweep_Atk]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Activate
global.UnitDat_AbilityScript[Cur,0]=scr_ability_D2_Wyvern_Activate

//Fantastic Frontier
var _wt=WorldType.FantasticFrontier
var Cur=UnitID.FanFron_AppleBat
scr_units_init_func(Cur,"Apple Bat",_wt,5,1,1,spr_cards,Cur-1)
var Cur=UnitID.FanFron_FantasticDragon
scr_units_init_func(Cur,"Fantastic Dragon",_wt,25,10,18,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Pierce_Atk]=true
var Cur=UnitID.FanFron_ForestWalker
scr_units_init_func(Cur,"Forest Walker",_wt,15,5,8,spr_cards,Cur-1)

//hexeria
var _wt=WorldType.Hexeria
var Cur=UnitID.Hexeria_EliteBandit
scr_units_init_func(Cur,"Elite Bandit",_wt,8,8,3,spr_cards,Cur-1)

//Madness Combat
var _wt=WorldType.MadnessCombat
var Cur=UnitID.MadnessCombat_Auditor
scr_units_init_func(Cur,"Auditor",_wt,35,25,20,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.FriendDeath
global.UnitDat_AbilityScript[Cur,0]=scr_ability_MadnessCombat_Auditor_FriendDeath
var Cur=UnitID.MadnessCombat_HankJwimbleton
scr_units_init_func(Cur,"Hank J. Wimbleton",_wt,10,5,3,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Deathwish
global.UnitDat_AbilityScript[Cur,0]=scr_ability_MadnessCombat_HankJwimbleton_Deathwish
var Cur=UnitID.MadnessCombat_MagAgent
scr_units_init_func(Cur,"Mag Agent",_wt,25,15,10,spr_cards,Cur-1)
var Cur=UnitID.MadnessCombat_MagHank
scr_units_init_func(Cur,"Mag Agent",_wt,25,20,15,spr_cards,Cur-1)
var Cur=UnitID.MadnessCombat_TheSavior
scr_units_init_func(Cur,"The Savior",_wt,20,15,12,spr_cards,Cur-1)//**Ability not yet done! No zombie yet?

//Plant VS Zombies
var _wt=WorldType.PlantVsZombies
var Cur=UnitID.PlantVsZombies_AstroVera
scr_units_init_func(Cur,"Astro Vera",_wt,10,10,10,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_AstroVera_Warcry
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,1]=scr_ability_PlantVsZombies_AstroVera_Intrinsic
var Cur=UnitID.PlantVsZombies_CobCannon
scr_units_init_func(Cur,"Cob Cannon",_wt,20,20,20,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.SpreadAtk]=true
var Cur=UnitID.PlantVsZombies_DoubledMint
scr_units_init_func(Cur,"Doubled Mint",_wt,2,1,2,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_DoubledMint_Intrinsic
var Cur=UnitID.PlantVsZombies_Imitator
scr_units_init_func(Cur,"Imitator",_wt,1,0,1,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_Imitator_Warcry
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.AfterCardSelection
global.UnitDat_AbilityScript[Cur,1]=scr_ability_PlantVsZombies_Imitator_AfterCardSelection
global.UnitDat_AbilityTrigger[Cur,2]=AbilityTrigger.AfterCardSelectionCancel
global.UnitDat_AbilityScript[Cur,2]=scr_ability_PlantVsZombies_Imitator_AfterCardSelectionCancel
var Cur=UnitID.PlantVsZombies_MagnifyingGrass
scr_units_init_func(Cur,"Magnifying Grass",_wt,1,0,5,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_MagnifyingGrass_Warcry
var Cur=UnitID.PlantVsZombies_Seedling
scr_units_init_func(Cur,"Seedling",_wt,1,0,2,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_PlantVsZombies_Seedling_Intrinsic

//Red Alert 3
var _wt=WorldType.RedAlert3
var Cur=UnitID.RedAlert3_ApocalypseTank
scr_units_init_func(Cur,"Apocalypse Tank",_wt,30,20,20,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Damaging
global.UnitDat_AbilityScript[Cur,0]=scr_ability_RedAlert3_ApocalypseTank_Damaging
var Cur=UnitID.RedAlert3_Conscript
scr_units_init_func(Cur,"Conscript",_wt,5,2,2,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
var Cur=UnitID.RedAlert3_Dreadnought
scr_units_init_func(Cur,"Dreadnought",_wt,30,30,20,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
var Cur=UnitID.RedAlert3_FutureTankX1
scr_units_init_func(Cur,"The Future Tank X-1",_wt,20,30,22,spr_cards,Cur-1)//damaging event inside
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_AttackingTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_RedAlert3_FutureTankX1
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityScript[Cur,0]=scr_ability_RedAlert3_FutureTankX1_ActivateTarget
global.UnitDat_CooldownMax[Cur]=3
var Cur=UnitID.RedAlert3_GigaFortress
scr_units_init_func(Cur,"Giga Fortress",_wt,40,25,22,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Pierce_Atk]=true
var Cur=UnitID.RedAlert3_HammerTank
scr_units_init_func(Cur,"Hammer Tank",_wt,12,5,12,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Kill
global.UnitDat_AbilityScript[Cur,0]=scr_ability_RedAlert3_HammerTank_Kill
var Cur=UnitID.RedAlert3_Kirov
scr_units_init_func(Cur,"Kirov",_wt,30,25,22,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Splash_Atk]=true
global.UnitDat_AttackType_SplashDmg[Cur]=5
var Cur=UnitID.RedAlert3_MigFighter
scr_units_init_func(Cur,"Mig Fighter",_wt,7,5,2,spr_cards,Cur-1)
var Cur=UnitID.RedAlert3_MirageTank
scr_units_init_func(Cur,"Mirage Tank",_wt,10,16,14,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_BAImmune
var Cur=UnitID.RedAlert3_ShogunExecutioner
scr_units_init_func(Cur,"Shogun Executioner",_wt,45,30,25,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Splash_Atk]=true
global.UnitDat_AttackType_SplashDmg[Cur]=5
var Cur=UnitID.RedAlert3_Spy
scr_units_init_func(Cur,"Spy",_wt,15,0,8,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_RedAlert3_Spy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_RedAlert3_Spy_ActivateTarget
var Cur=UnitID.RedAlert3_Stingray
scr_units_init_func(Cur,"Stingray",_wt,16,3,10,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.SpreadAtk]=true
var Cur=UnitID.RedAlert3_V4RocketLauncher
scr_units_init_func(Cur,"V4 Rocket Launcher",_wt,10,30,18,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true

//SouthPark
var _wt=WorldType.SouthPark
var Cur=UnitID.SouthPark_AWESOMEO4000
scr_units_init_func(Cur,"A.W.E.S.O.m.-O 4000",_wt,40,10,16,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_AWESOMEO4000_ActivateTarget
global.UnitDat_CooldownMax[Cur]=2
var Cur=UnitID.SouthPark_BountyHunterKyle
scr_units_init_func(Cur,"Bounty Hunter Kyle",_wt,12,14,12,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Kill
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_BountyHunterKyle_Kill
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Damaging
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_BountyHunterKyle_Damaging
var Cur=UnitID.SouthPark_BuccaneerBebe
scr_units_init_func(Cur,"Buccaneer Bebe",_wt,10,10,9,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Kill
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_BuccaneerBebe_Kill
var Cur=UnitID.SouthPark_CanadianKnightIke
scr_units_init_func(Cur,"Canadian Knight Ike",_wt,5,8,3,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_CanadianKnightIke_Intrinsic
var Cur=UnitID.SouthPark_CaptainDiabetes
scr_units_init_func(Cur,"Captain Diabetes",_wt,7,8,3,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_CaptainDiabetes_Intrinsic
global.UnitDat_CooldownMax[Cur]=1
var Cur=UnitID.SouthPark_ChaosHamsters
scr_units_init_func(Cur,"Chaos Hamsters",_wt,7,5,3,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_StatusEffectSpellsImmune

var Cur=UnitID.SouthPark_DarkAngelRed//needs some fixing How does a warcry target work?
scr_units_init_func(Cur,"Dark Angel Red",_wt,8,8,9,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyAllies
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_DarkAngelRed_ActivateTarget//ability does not trigger deathwish
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.AfterCardSelection
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_DarkAngelRed_AfterCardSelection
global.UnitDat_AbilityTrigger[Cur,2]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,2]=scr_ability_SouthPark_DarkAngelRed_Intrinsic

var Cur=UnitID.SouthPark_DarkMageCraig
scr_units_init_func(Cur,"Dark Mage Craig",_wt,12,7,10,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.SpreadAtk]=true
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_DarkMageCraig_Warcry
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
var Cur=UnitID.SouthPark_DoctorTimothy
scr_units_init_func(Cur,"Doctor Timothy",_wt,18,5,10,spr_cards,Cur-1)//damaging event inside
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_AttackingTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_SouthPark_DoctorTimothy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_DoctorTimothy_ActivateTarget
global.UnitDat_CooldownMax[Cur]=1
var Cur=UnitID.SouthPark_EnforcerJimmy
scr_units_init_func(Cur,"Enforcer Jimmy",_wt,10,5,8,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_EnforcerJimmy_Intrinsic
var Cur=UnitID.SouthPark_Fastpass
scr_units_init_func(Cur,"Fastpsas",_wt,15,10,10,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Pierce_Atk]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Damaging
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_Fastpass_Damaging
var Cur=UnitID.SouthPark_Firkle
scr_units_init_func(Cur,"Firkle",_wt,10,5,6,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Deathwish
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_Firkle_Deathwish
var Cur=UnitID.SouthPark_Henrietta//when cards die, they respawn but the card is still in the dead card deck
scr_units_init_func(Cur,"Henrietta",_wt,16,10,14,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.FriendDeath
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_Henrietta_FriendDeath
var Cur=UnitID.SouthPark_HermesKenny
scr_units_init_func(Cur,"Hermes Kenny",_wt,5,8,4,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Deathwish
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_HermesKenny_Deathwish
var Cur=UnitID.SouthPark_IncanCraig//damaging event inside
scr_units_init_func(Cur,"Incan Craig",_wt,20,10,10,spr_cards,Cur-1)
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_FutureTankX1
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_RedAlert3_FutureTankX1
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_IncanCraig_ActivateTarget
global.UnitDat_CooldownMax[Cur]=1
var Cur=UnitID.SouthPark_InuitKenny
scr_units_init_func(Cur,"Innuit Kenny",_wt,6,9,5,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Deathwish
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_InuitKenny_Deathwish
var Cur=UnitID.SouthPark_KyleOfTheDrowElves
scr_units_init_func(Cur,"Kyle of the Drow Elves",_wt,15,10,12,spr_cards,Cur-1);global.UnitDat_ImmuneCapable[Cur]=true
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Activate
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_KyleOfTheDrowElves_Activate
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.AfterDamaged
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_KyleOfTheDrowElves_AfterDamaged
global.UnitDat_CooldownMax[Cur]=2
var Cur=UnitID.SouthPark_Manbearpig
scr_units_init_func(Cur,"Manbearpig",_wt,50,30,25,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Splash_Atk]=true
global.UnitDat_AttackType_SplashDmg[Cur]=5
var Cur=UnitID.SouthPark_MrHankey
scr_units_init_func(Cur,"Mr. Hankey",_wt,16,4,12,spr_cards,Cur-1)//not technically a warcry
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_MrHankey_Warcry
var Cur=UnitID.SouthPark_Nathan
scr_units_init_func(Cur,"Nathan",_wt,12,10,12,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.SpreadAtk]=true
var Cur=UnitID.SouthPark_PaladinButters
scr_units_init_func(Cur,"Paladin Butters",_wt,8,15,10,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Deathwish
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_PaladinButters_Deathwish
var Cur=UnitID.SouthPark_PrincessKenny
scr_units_init_func(Cur,"Princess Kenny",_wt,4,7,4,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Deathwish
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_PrincessKenny_Deathwish
var Cur=UnitID.SouthPark_Robobebe//legacy
scr_units_init_func(Cur,"Robo Bebe",_wt,10,10,9,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Kill
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_BuccaneerBebe_Kill
var Cur=UnitID.SouthPark_RogueToken
scr_units_init_func(Cur,"Rogue Token",_wt,14,5,10,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_RogueToken_Warcry
var Cur=UnitID.SouthPark_ShamanToken
scr_units_init_func(Cur,"Shaman Token",_wt,14,4,10,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_ShamanToken_Intrinsic
global.UnitDat_CooldownMax[Cur]=2
var Cur=UnitID.SouthPark_SheildmaidenWendy
scr_units_init_func(Cur,"Sheildmaiden Wendy",_wt,18,12,12,spr_cards,Cur-1);global.UnitDat_ImmuneCapable[Cur]=true
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Activate
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_SheildmaidenWendy_Activate
global.UnitDat_CooldownMax[Cur]=2
var Cur=UnitID.SouthPark_StanofManyMoonos
scr_units_init_func(Cur,"Stan of Many Moons",_wt,10,15,15,spr_cards,Cur-1)
global.UnitDat_AttackType[Cur,UnitAttackType.Splash_Atk]=true
global.UnitDat_AttackType_SplashDmg[Cur]=10
var Cur=UnitID.SouthPark_Tupperware
scr_units_init_func(Cur,"Tupperware",_wt,15,10,10,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_StatusEffectSpellsImmune

var Cur=UnitID.SouthPark_WoodlandCritters
scr_units_init_func(Cur,"Woodland Critters",_wt,16,6,12,spr_cards,Cur-1)
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.UnitCardOnMe
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_WoodlandCritters_UnitCardOnMe

var Cur=UnitID.SouthPark_YouthPastorCraig
scr_units_init_func(Cur,"Youth Pastor Craig",_wt,16,4,8,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Warcry
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_YouthPastorCraig_Warcry
var Cur=UnitID.SouthPark_ZenCartman
scr_units_init_func(Cur,"Zen Cartman",_wt,45,0,15,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SouthPark_ZenCartman_Intrinsic
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.AfterDamaged
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_ZenCartman_AfterDamaged

//Tower battles
var _wt=WorldType.TowerBattles
var Cur=UnitID.TowerBattles_MaxedSniper
scr_units_init_func(Cur,"Maxed Sniper",_wt,15,20,12,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
var Cur=UnitID.TowerBattles_Sniper
scr_units_init_func(Cur,"Sniper",_wt,10,3,2,spr_cards,Cur-1);global.UnitDat_AttackType[Cur,UnitAttackType.CrossAtk]=true
var Cur=UnitID.TowerBattles_Void
scr_units_init_func(Cur,"Sniper",_wt,55,10,22,spr_cards,Cur-1)
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.ActivateTarget
global.UnitDat_AbilityTargetSelectCheck[Cur]=scr_ability_SelectChecks_PlayerTurn
global.UnitDat_AbilityTargetCheck[Cur,0]=scr_ability_Checks_OnlyEnemy
global.UnitDat_AbilityScript[Cur,0]=scr_ability_TowerBattles_Void_ActivateTarget
global.UnitDat_AbilityTrigger[Cur,1]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,1]=scr_ability_SouthPark_DarkAngelRed_Intrinsic

//Unturned
var _wt=WorldType.Unturned
var Cur=UnitID.Unturned_AcidZombie
scr_units_init_func(Cur,"Acid Zombie",_wt,12,10,12,spr_cards,Cur-1);
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Damaging
global.UnitDat_AbilityScript[Cur,0]=scr_ability_Unturned_AcidZombie_Damaging
global.UnitDat_CooldownMax[Cur]=1
var Cur=UnitID.Unturned_BurnerZombie
scr_units_init_func(Cur,"Burner Zombie",_wt,12,10,12,spr_cards,Cur-1);
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Deathwish
global.UnitDat_AbilityScript[Cur,0]=scr_ability_Unturned_BurnerZombie_Deathwish
var Cur=UnitID.Unturned_SpiritZombie
scr_units_init_func(Cur,"Spirit Zombie",_wt,12,10,11,spr_cards,Cur-1);
global.UnitDat_AbilityTrigger[Cur,0]=AbilityTrigger.Intrinsic
global.UnitDat_AbilityScript[Cur,0]=scr_ability_SPImmune
var Cur=UnitID.Unturned_Zombie
scr_units_init_func(Cur,"Zombie",_wt,5,1,1,spr_cards,Cur-1);

//Unturned
var _wt=WorldType.Vesteria
var Cur=UnitID.Vesteria_Crabby
scr_units_init_func(Cur,"Crabby",_wt,8,2,2,spr_cards,Cur-1);

scr_units_init_raidunits()
