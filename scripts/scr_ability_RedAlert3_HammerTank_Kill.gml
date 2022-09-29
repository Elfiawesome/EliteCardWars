///scr_ability_RedAlert3_HammerTank_Kill(Victim Obj)
var MapStr=argument0;
var _ID=MapStr.CardID;
if Stats[? "AbilityCooldown"]=0{
    var _stringid=GetMultiStatsString(id)
    var ms=Stats[? "Multi_CrossAtk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.CrossAtk]
    var ms=Stats[? "Multi_SpreadAtk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.SpreadAtk]
    var ms=Stats[? "Multi_Sweep_Atk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.Sweep_Atk]
    var ms=Stats[? "Multi_Pierce_Atk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.Pierce_Atk]
    var ms=Stats[? "Multi_Splash_Atk"];ms[? _stringid]=global.UnitDat_AttackType[_ID,UnitAttackType.Splash_Atk]
    Stats[? "SplashAtk"]=global.UnitDat_AttackType_SplashDmg[_ID]
    var _mii=Stats[? "Multi_IsSPImmune"];_mii[? _stringid]=1
    var _mii=Stats[? "Multi_IsBAImmune"];_mii[? _stringid]=1
    if global.UnitDat_AbilityScript[_ID,0]!=scr_ability_none{
        Stats[? "AbilityLifespan"]=0
        Stats[? "AbilityCooldown"]=global.UnitDat_CooldownMax[_ID]
        Stats[? "AbilityCooldownMax"]=global.UnitDat_CooldownMax[_ID]
        ds_list_add(Stats[? "AbilitiesScript"],_ID)
    }
    player_con_CardholdersUpdateMultiStats()
    Stats[? "AbilityCooldown"]=-1
}
