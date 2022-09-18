///SummonCard(obj,cardID)
with(argument0){
    CardID=argument1
    Stats[? "Base_Hp"]=global.UnitDat_Hp[CardID]
    Stats[? "Hp"]=Stats[? "Base_Hp"]
    Stats[? "Base_Atk"]=global.UnitDat_Atk[CardID]
    Stats[? "Atk"]=Stats[? "Base_Atk"]
    
    
    var ms=Stats[? "Multi_CrossAtk"];ms[? string(id)]=global.UnitDat_AttackType[CardID,UnitAttackType.CrossAtk]
    var ms=Stats[? "Multi_SpreadAtk"];ms[? string(id)]=global.UnitDat_AttackType[CardID,UnitAttackType.SpreadAtk]
    var ms=Stats[? "Multi_Sweep_Atk"];ms[? string(id)]=global.UnitDat_AttackType[CardID,UnitAttackType.Sweep_Atk]
    var ms=Stats[? "Multi_Pierce_Atk"];ms[? string(id)]=global.UnitDat_AttackType[CardID,UnitAttackType.Pierce_Atk]
    var ms=Stats[? "Multi_Splash_Atk"];ms[? string(id)]=global.UnitDat_AttackType[CardID,UnitAttackType.Splash_Atk]
    Stats[? "SplashAtk"]=global.UnitDat_AttackType_SplashDmg[CardID]
    
    Stats[? "AbilityCooldown"]=global.UnitDat_CooldownMax[CardID]
    Stats[? "AbilityCooldownMax"]=global.UnitDat_CooldownMax[CardID]
    
    //Activate Warcry Ability
    Activate_Warcry_Ability()
    //Activate Intrinsic Ability
    Activate_Intrinsic_Ability()
    
    player_con_CardholdersUpdateMultiStats()
}
