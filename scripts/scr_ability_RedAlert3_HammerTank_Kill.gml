///scr_ability_RedAlert3_HammerTank_Kill(Victim Obj)
var MapStr=argument0;
var _ID=MapStr.CardID;
if Stats[? "AbilityCooldown"]=0{
    var HasAbility=false
    var _stringid=GetMultiStatsString(id)
    var ms=Stats[? "Multi_CrossAtk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.CrossAtk];if global.UnitDat_AttackType[_ID,UnitAttackType.CrossAtk]=true{HasAbility=true}
    var ms=Stats[? "Multi_SpreadAtk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.SpreadAtk];if global.UnitDat_AttackType[_ID,UnitAttackType.SpreadAtk]=true{HasAbility=true}
    var ms=Stats[? "Multi_Sweep_Atk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.Sweep_Atk];if global.UnitDat_AttackType[_ID,UnitAttackType.Sweep_Atk]=true{HasAbility=true}
    var ms=Stats[? "Multi_Pierce_Atk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.Pierce_Atk];if global.UnitDat_AttackType[_ID,UnitAttackType.Pierce_Atk]=true{HasAbility=true}
    var ms=Stats[? "Multi_Splash_Atk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.Splash_Atk];if global.UnitDat_AttackType[_ID,UnitAttackType.Splash_Atk]=true{HasAbility=true}
    Stats[? "SplashAtk"]=global.UnitDat_AttackType_SplashDmg[_ID];
    if global.UnitDat_AbilityScript[_ID,0]!=scr_ability_none{
        Stats[? "AbilityLifespan"]=0
        Stats[? "AbilityCooldown"]=global.UnitDat_CooldownMax[_ID]
        Stats[? "AbilityCooldownMax"]=global.UnitDat_CooldownMax[_ID]
        ds_list_add(Stats[? "AbilitiesScript"],_ID)
        HasAbility=true
    }
    player_con_CardholdersUpdateMultiStats()
    
    if HasAbility{
        Stats[? "AbilityCooldown"]=-1
    }
}
