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
    EndOfTurn,
    WhenCasted,
    StartOfBattle,
}


var Cur=SpellID.Hexeria_BlueElixir//Consumable Type
scr_spells_init_func(Cur,"Blue Elixir",5,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Hexeria_BlueElixir_WhenCasted
var Cur=SpellID.Hexeria_Purify
scr_spells_init_func(Cur,"Purify",3,spr_spells,Cur-1,SpellType.Consumable,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.WhenCasted
global.SpellDat_SpellScript[Cur,0]=scr_spell_Hexeria_Purify_WhenCasted


/*var Cur=SpellID.MadnessCombat_SaviorsHalo
scr_spells_init_func(Cur,"Savior's Halo",1,spr_spells,Cur-1)*/
var Cur=SpellID.Payday2_HostageTaker//Equipment Type
scr_spells_init_func(Cur,"Hostage Taker",4,spr_spells,Cur-1,SpellType.Equipment,SpellCastType.UnitTarget)
global.SpellDat_CastCheck[Cur]=scr_spells_Checks_OnlyAllies
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.EndOfTurn
global.SpellDat_SpellScript[Cur,0]=scr_spell_Payday2_HostageTaker_EndOfTurn
/*var Cur=SpellID.Payday2_ImprovedCombinedTacticalVest
scr_spells_init_func(Cur,"Improved Combined Tactical Vest",3,spr_spells,Cur-1)
*/
var Cur=SpellID.RedAlert3_Cryogeddon//Weather Type
scr_spells_init_func(Cur,"Cryogeddon",4,spr_spells,Cur-1,SpellType.Weather,SpellCastType.BattlefieldTarget)
global.SpellDat_CastCheck[Cur]=scr_spellls_Check_EnemyTeam
global.SpellDat_SpellTrigger[Cur,0]=SpellTrigger.StartOfBattle
global.SpellDat_SpellScript[Cur,0]=scr_spell_RedAlert3_Cryogeddon_StartOfBattle
