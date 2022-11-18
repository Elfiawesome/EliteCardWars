enum SpellID{
    Hexeria_BlueElixir=1,
    Hexeria_Purify,
    MadnessCombat_SaviorsHalo,
    Payday2_HostageTaker,
    Payday2_ImprovedCombinedTacticalVest,
    Payday2_Inspire,
    PlantVsZombies_SpringBean,
    RedAlert3_Cryogeddon,
    RedAlert3_DesolatorAirstrike,
    RedAlert3_MassProductionUpgrade,
    RedAlert3_ObservationPost,
    RedAlert3_OrbitalDownpour,
    RedAlert3_PointDefenseDrones,
    SouthPark_UnholyCombustion,
    Unturned_Bandage,
    Unturned_FullMoon,
    Vesteria_Flare,
    Vesteria_Inspire,
    Vesteria_RangerStance,
    Vesteria_Regeneration,
    Vesteria_Reserruct,
    Vesteria_Warcry,

    SpellID_MAX,
}
enum SpellCastType{
    UnitTarget,
    BattlefieldTarget,
    Battlefield,
}
enum SpellType{
    Consumable,
    Equipment,
    Weather,
}
enum SpellTrigger{
    Default,
    EndOfTurn,//Equipment
    WhenCasted,//consumable
    StartOfBattle,//Weather
    StartAndEndOfTurn,//Equipment
    AfterCardSelection,
    AfterCardSelectionCancel,
}

var _wt=WorldType.Hexeria
var Cur=SpellID.Hexeria_BlueElixir//Consumable
scr_spells_init_func(Cur,"Blue Elixir",_wt,5,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Hexeria_BlueElixir_WhenCasted
var Cur=SpellID.Hexeria_Purify//Consumable
scr_spells_init_func(Cur,"Purify",_wt,3,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Hexeria_Purify_WhenCasted
var _wt=WorldType.MadnessCombat
var Cur=SpellID.MadnessCombat_SaviorsHalo//Equipment
scr_spells_init_func(Cur,"Savior's Halo",_wt,1,spr_spells,Cur-1,SpellType.Equipment,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartAndEndOfTurn
global.SpellDat_SpellScript[Cur,0]=scr_spell_MadnessCombat_SaviorsHalo_StartAndEndOfTurn
var _wt=WorldType.Payday2
var Cur=SpellID.Payday2_HostageTaker//Equipment
scr_spells_init_func(Cur,"Hostage Taker",_wt,4,spr_spells,Cur-1,SpellType.Equipment,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.EndOfTurn
global.SpellDat_SpellScript[Cur,0]=scr_spell_Payday2_HostageTaker_EndOfTurn
var Cur=SpellID.Payday2_ImprovedCombinedTacticalVest
scr_spells_init_func(Cur,"Improved Combined Tactical Vest",_wt,3,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Payday2_ImprovedCombinedTacticalVest_WhenCasted
var Cur=SpellID.Payday2_Inspire
scr_spells_init_func(Cur,"Inspire",_wt,5,spr_spells,Cur-1,SpellType.Equipment,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_Open
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartAndEndOfTurn
global.SpellDat_SpellScript[Cur,0]=scr_spell_Payday2_Inspire_StartAndEndOfTurn
global.SpellDat_SpellTrigger[Cur,1]=SpellTrigger.AfterCardSelection
global.SpellDat_SpellScript[Cur,1]=scr_spell_Payday2_Inspire_AfterCardSelection
global.SpellDat_SpellTrigger[Cur,2]=SpellTrigger.AfterCardSelectionCancel
global.SpellDat_SpellScript[Cur,2]=scr_spell_Payday2_Inspire_AfterCardSelectionCancel
var _wt=WorldType.PlantVsZombies
var Cur=SpellID.PlantVsZombies_SpringBean
scr_spells_init_func(Cur,"Spring Bean",_wt,5,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyEnemies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_PlantVsZombies_SpringBean_WhenCasted
var _wt=WorldType.RedAlert3
var Cur=SpellID.RedAlert3_Cryogeddon//Weather
scr_spells_init_func(Cur,"Cryogeddon",_wt,4,spr_spells,Cur-1,SpellType.Weather,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_EnemyTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartOfBattle
global.SpellDat_SpellScript[Cur,0]=scr_spell_RedAlert3_Cryogeddon_StartOfBattle
var Cur=SpellID.RedAlert3_DesolatorAirstrike//Weather
scr_spells_init_func(Cur,"Desolator Airstrike",_wt,8,spr_spells,Cur-1,SpellType.Weather,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_EnemyTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartOfBattle
global.SpellDat_SpellScript[Cur,0]=scr_spell_RedAlert3_DesolatorAirstrike_StartOfBattle
var Cur=SpellID.RedAlert3_MassProductionUpgrade//Equipment
scr_spells_init_func(Cur,"Mass Production Upgrade",_wt,10,spr_spells,Cur-1,SpellType.Equipment,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_AlliesTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartAndEndOfTurn
global.SpellDat_SpellScript[Cur,0]=scr_spell_RedAlert3_MassProductionUpgrade_StartAndEndOfTurn

var Cur=SpellID.RedAlert3_ObservationPost
scr_spells_init_func(Cur,"Observation Post",_wt,2,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_EnemyTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_RedAlert3_ObservationPost_WhenCasted

var Cur=SpellID.RedAlert3_OrbitalDownpour//Weather
scr_spells_init_func(Cur,"Observation Post",_wt,15,spr_spells,Cur-1,SpellType.Weather,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyEnemies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartOfBattle
global.SpellDat_SpellScript[Cur,0]=scr_spell_RedAlert3_OrbitalDownpour_StartAndEndOfTurn
var Cur=SpellID.RedAlert3_PointDefenseDrones//Consumable
scr_spells_init_func(Cur,"Observation Post",_wt,4,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_RedAlert3_PointDefenseDrones_WhenCasted

var _wt=WorldType.SouthPark
var Cur=SpellID.SouthPark_UnholyCombustion//Weather
scr_spells_init_func(Cur,"Unholy Combustion",_wt,20,spr_spells,Cur-1,SpellType.Weather,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyEnemies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartOfBattle
global.SpellDat_SpellScript[Cur,0]=scr_spell_SouthPark_UnholyCombustion_StartOfBattle


var _wt=WorldType.Unturned
var Cur=SpellID.Unturned_Bandage//Consumable
scr_spells_init_func(Cur,"Bandage",_wt,1,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Unturned_Bandage_WhenCasted
var Cur=SpellID.Unturned_FullMoon//Consumable
scr_spells_init_func(Cur,"Bandage",_wt,5,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_AlliesTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Unturned_FullMoon_WhenCasted

var _wt=WorldType.Vesteria
var Cur=SpellID.Vesteria_Flare//Weather
scr_spells_init_func(Cur,"Flare",_wt,3,spr_spells,Cur-1,SpellType.Weather,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_EnemyTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartOfBattle
global.SpellDat_SpellScript[Cur,0]=scr_spell_Vesteria_Flare_StartOfBattle
var Cur=SpellID.Vesteria_Inspire//Consumable
scr_spells_init_func(Cur,"Inspiire",_wt,3,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_AlliesTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Vesteria_Inspire_WhenCasted
var Cur=SpellID.Vesteria_RangerStance//Consumable
scr_spells_init_func(Cur,"Ranger's Stance",_wt,2,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Vesteria_RangerStance_WhenCasted
var Cur=SpellID.Vesteria_Regeneration//Weather
scr_spells_init_func(Cur,"Regeneration",_wt,5,spr_spells,Cur-1,SpellType.Weather,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_AlliesTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartOfBattle
global.SpellDat_SpellScript[Cur,0]=scr_spell_Vesteria_Regeneration_StartOfBattle

var Cur=SpellID.Vesteria_Reserruct//Weather
scr_spells_init_func(Cur,"Reserruct",_wt,8,spr_spells,Cur-1,SpellType.Equipment,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_Open
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartAndEndOfTurn
global.SpellDat_SpellScript[Cur,0]=scr_spell_Vesteria_Reserruct_StartAndEndOfTurn
global.SpellDat_SpellTrigger[Cur,1]=SpellTrigger.AfterCardSelection
global.SpellDat_SpellScript[Cur,1]=scr_spell_Vesteria_Reserruct_AfterCardSelection
global.SpellDat_SpellTrigger[Cur,2]=SpellTrigger.AfterCardSelectionCancel
global.SpellDat_SpellScript[Cur,2]=scr_spell_Vesteria_Reserruct_AfterCardSelectionCancel

var Cur=SpellID.Vesteria_Warcry//Consumable
scr_spells_init_func(Cur,"Warcry",_wt,3,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_AlliesTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Vesteria_Warcry_WhenCasted
