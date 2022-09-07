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
    
    PlantVsZombies_AstroVera,
    PlantVsZombies_CobCannon,
    PlantVsZombies_DoubledMint,
    PlantVsZombies_Imitator,
    PlantVsZombies_MagnifyingGrass,
    PlantVsZombies_Seedling,
    
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
    Activate,//activated when pressed "A" on unit
    ActivateTarget,//activated when pressed then pressed another on another unit
    Intrinsic,//activated when summoned and updated on every start of the round
    Deathwish,//activated when dead
    FriendDeath,//Activated when cardholder friend is dead
    Warcry,//activated when Summoned [Not yet implemented]
    Kill,//activated Each kill [Not yet implemented]
    Damaged,//activated when damaged
    AfterCardSelection,//activated after con has finished selecting a card
}


global.UnitDataMap=ds_map_create()
ds_map_destroy(global.UnitDataMap)
scr_units_init_all()

//Heroes
var Cur=HeroID.Unturned_CaptainSydney
scr_hero_init_func(Cur,"Captain Sydney",10,0,spr_Heroes,Cur-1)
var Cur=HeroID.RA3_PremierAnatolyIlychCherdenko
scr_hero_init_func(Cur,"Premier AnatolyIlych Cherdenko",10,0,spr_Heroes,Cur-1)
var Cur=HeroID.D2_Zavala
scr_hero_init_func(Cur,"Zavala",10,0,spr_Heroes,Cur-1)


//how many points at a turn
global.TurnPointArray[0]=1000
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
