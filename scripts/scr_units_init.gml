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
    
    //Hexeria
    Hexeria_EliteBandit,
    
    //Madness Combat
    MadnessCombat_Auditor,
    MadnessCombat_HankJwimbleton,
    MadnessCombat_MagAgent,
    MadnessCombat_MagHank,
    MadnessCombat_TheSavior,
    
    //Plants Vs Zombies
    PlantVsZombies_AstroVera,
    PlantVsZombies_CobCannon,
    PlantVsZombies_DoubledMint,
    PlantVsZombies_Imitator,
    PlantVsZombies_MagnifyingGrass,
    PlantVsZombies_Seedling,
    
    //Red Alert 3
    RedAlert3_ApocalypseTank,
    RedAlert3_Conscript,//Legacy, might drop out
    RedAlert3_Dreadnought,
    RedAlert3_FutureTankX1,
    RedAlert3_GigaFortress,
    RedAlert3_HammerTank,
    RedAlert3_Kirov,
    RedAlert3_MigFighter,
    RedAlert3_MirageTank,
    RedAlert3_ShogunExecutioner,
    RedAlert3_Spy,
    RedAlert3_Stingray,
    RedAlert3_V4RocketLauncher,
    
    //South Park
    SouthPark_AWESOMEO4000,
    SouthPark_BountyHunterKyle,
    SouthPark_BuccaneerBebe,
    SouthPark_CanadianKnightIke,
    SouthPark_CaptainDiabetes,
    SouthPark_ChaosHamsters,
    SouthPark_DarkAngelRed,
    SouthPark_DarkMageCraig,
    SouthPark_DoctorTimothy,
    SouthPark_EnforcerJimmy,
    SouthPark_Fastpass,
    SouthPark_Firkle,
    SouthPark_Henrietta,
    SouthPark_HermesKenny,
    SouthPark_IncanCraig,
    SouthPark_InuitKenny,
    SouthPark_KyleOfTheDrowElves,
    SouthPark_Manbearpig,
    SouthPark_MrHankey,
    SouthPark_Nathan,
    SouthPark_PaladinButters,
    SouthPark_PrincessKenny,
    SouthPark_Robobebe,
    SouthPark_RogueToken,
    SouthPark_ShamanToken,
    SouthPark_SheildmaidenWendy,
    SouthPark_StanofManyMoonos,
    SouthPark_Tupperware,
    SouthPark_WoodlandCritters,
    SouthPark_YouthPastorCraig,
    SouthPark_ZenCartman,
    
    //tower battles
    TowerBattles_MaxedSniper,
    TowerBattles_Sniper,
    TowerBattles_Void,
    
    //untured
    
    UnitID_MAX,
}
enum HeroID{
    Unturned_CaptainSydney=1,
    RA3_PremierAnatolyIlychCherdenko,
    D2_Zavala,
    HeroID_MAX,
}
enum WorldType{
    Destiny2,
    FantasticFrontier,
    Hexeria,
    MadnessCombat,
    PlantVsZombies,
    RedAlert3,
    SouthPark,
    TowerBattles,
}
enum UnitAttackType{
    CrossAtk,
    SpreadAtk,
    Sweep_Atk,
    Pierce_Atk,
    Splash_Atk,
    Sp_Atk,
}
enum AbilityTrigger{
    Default,//default not used
    Passive,//not sure what this supposed to do
    Activate,//activated when pressed "A" on unit
    ActivateTarget,//activated when pressed then pressed another on another unit
    Intrinsic,//activated when summoned and updated on every start of the round
    Deathwish,//activated when dead
    FriendDeath,//Activated when cardholder friend is dead
    Warcry,//activated when Summoned
    WarcryTarget,//activated when Summoned but gives a target to pick
    Kill,//activated Each kill [Not yet implemented]
    Damaging,//activated when damaging
    Damaged,//activated when damaged
    AfterDamaged,//activated after damaged calculation
    AfterCardSelection,//activated after con has finished selecting a card
    AfterCardSelectionCancel,//activated after cancelation of selection
    UnitCardOnMe,//activated when a unit card is placed on the cardholder
}


global.UnitDataMap=ds_map_create()
ds_map_destroy(global.UnitDataMap)
scr_units_init_all()
scr_spells_init_all()
//Heroes
var Cur=HeroID.Unturned_CaptainSydney
scr_hero_init_func(Cur,"Captain Sydney",10,0,spr_Heroes,Cur-1)
var Cur=HeroID.RA3_PremierAnatolyIlychCherdenko
scr_hero_init_func(Cur,"Premier AnatolyIlych Cherdenko",10,0,spr_Heroes,Cur-1)
var Cur=HeroID.D2_Zavala
scr_hero_init_func(Cur,"Zavala",10,0,spr_Heroes,Cur-1)


//how many points at a turn
global.TurnPointArray[0]=1000
if global.IsSpeedrun=false{
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
}
