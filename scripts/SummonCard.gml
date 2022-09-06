///SummonCard(obj,cardID)
with(argument0){
    CardID=argument1
    Stats[? "Base_Hp"]=global.UnitDat_Hp[CardID]
    Stats[? "Hp"]=Stats[? "Base_Hp"]
    Stats[? "Base_Atk"]=global.UnitDat_Atk[CardID]
    Stats[? "Atk"]=Stats[? "Base_Atk"]
    
    Stats[? "CrossAtk"]=global.UnitDat_AttackType[CardID,UnitAttackType.CrossAtk]
    Stats[? "SpreadAtk"]=global.UnitDat_AttackType[CardID,UnitAttackType.SpreadAtk]
    Stats[? "Sweep_Atk"]=global.UnitDat_AttackType[CardID,UnitAttackType.Sweep_Atk]
    Stats[? "Pierce_Atk"]=global.UnitDat_AttackType[CardID,UnitAttackType.Pierce_Atk]
    
    Stats[? "AbilityCooldown"]=global.UnitDat_CooldownMax[CardID]
    Stats[? "AbilityCooldownMax"]=global.UnitDat_CooldownMax[CardID]
    
    //Activate Warcry Ability
    Activate_Warcry_Ability()
    //Activate Intrinsic Ability
    Activate_Intrinsic_Ability()
}
