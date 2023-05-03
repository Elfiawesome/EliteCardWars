///scr_add_randomcards(list)
var _l=argument0
var _c=irandom_range(0,2)
switch(_c){
    case 0://default set
        ds_list_add(_l,
            UnitID.RedAlert3_Conscript,
            UnitID.RedAlert3_MigFighter,
            UnitID.RedAlert3_MirageTank,
            UnitID.RedAlert3_GigaFortress,
            UnitID.RedAlert3_Stingray,
            UnitID.RedAlert3_Kirov,
            UnitID.RedAlert3_HammerTank,
            UnitID.RedAlert3_Dreadnought,
            UnitID.MadnessCombat_Auditor,
            UnitID.MadnessCombat_HankJwimbleton,
            UnitID.MadnessCombat_TheSavior,
            UnitID.SouthPark_InuitKenny,
            UnitID.SouthPark_Firkle,
            UnitID.SouthPark_Fastpass,
            UnitID.SouthPark_Henrietta,
            UnitID.SouthPark_ZenCartman,
            UnitID.Unturned_AcidZombie,
            UnitID.Unturned_BurnerZombie,
            UnitID.Unturned_AcidZombie,
            UnitID.Unturned_Zombie,
        )
    break;
    case 1:
        ds_list_add(_l,
            UnitID.D2_Goblin,
            UnitID.D2_Servitor,
            UnitID.D2_Wyvern,
            UnitID.GenshinImpact_Ayaka,
            UnitID.GenshinImpact_Bennett,
            UnitID.GenshinImpact_ElectroSlime,
            UnitID.GenshinImpact_PyroslingerBracer,
            UnitID.GenshinImpact_RaidenShogun,
            UnitID.GenshinImpact_Zhongli,
            UnitID.PlantVsZombies_AstroVera,
            UnitID.PlantVsZombies_CobCannon,
            UnitID.RedAlert3_Dreadnought,
            UnitID.RedAlert3_MirageTank,
            UnitID.SouthPark_Fastpass,
            UnitID.SouthPark_Henrietta,
            UnitID.SouthPark_HermesKenny,
            UnitID.SouthPark_Manbearpig,
            UnitID.SouthPark_StanofManyMoonos,
            UnitID.SouthPark_Tupperware,
            UnitID.TowerBattles_Void,
        )
    break;
    case 2:
        ds_list_add(_l,
            UnitID.D2_Harpy,
            UnitID.D2_AtheonTimesConflux,
            UnitID.D2_Wyvern,
            UnitID.GenshinImpact_AnemoSlime,
            UnitID.GenshinImpact_Bennett,
            UnitID.GenshinImpact_Barbara,
            UnitID.GenshinImpact_Hutao,
            UnitID.GenshinImpact_RaidenShogun,
            UnitID.GenshinImpact_Zhongli,
            UnitID.GenshinImpact_AnemoboxerVanguard,
            UnitID.PlantVsZombies_AstroVera,
            UnitID.RedAlert3_Dreadnought,
            UnitID.RedAlert3_ShogunExecutioner,
            UnitID.SouthPark_DarkMageCraig,
            UnitID.SouthPark_Henrietta,
            UnitID.SouthPark_HermesKenny,
            UnitID.SouthPark_RogueToken,
            UnitID.SouthPark_PrincessKenny,
            UnitID.Unturned_AcidZombie,
            UnitID.TowerBattles_Void,
        )
    break;
}

