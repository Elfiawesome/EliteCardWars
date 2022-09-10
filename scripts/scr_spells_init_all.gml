enum SpellID{
    Hexeria_BlueElixir,
    Hexeria_Purify,
    MadnessCombat_SaviorsHalo,
    Payday2_HostageTaker,
    Payday2_ImprovedCombinedTacticalVest,

    SpellID_MAX,
}

var Cur=SpellID.Hexeria_BlueElixir
scr_spells_init_func(Cur,"Blue Elixir",5,spr_spells,Cur-1)
var Cur=SpellID.Hexeria_Purify
scr_spells_init_func(Cur,"Purify",3,spr_spells,Cur-1)

var Cur=SpellID.MadnessCombat_SaviorsHalo
scr_spells_init_func(Cur,"Savior's Halo",1,spr_spells,Cur-1)

var Cur=SpellID.Payday2_HostageTaker
scr_spells_init_func(Cur,"Hostage Taker",4,spr_spells,Cur-1)
var Cur=SpellID.Payday2_ImprovedCombinedTacticalVest
scr_spells_init_func(Cur,"Improved Combined Tactical Vest",3,spr_spells,Cur-1)
