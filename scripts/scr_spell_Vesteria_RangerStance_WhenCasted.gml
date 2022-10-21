///scr_spell_Vesteria_RangerStance_WhenCasted()
var MapStr=argument0
var mIA=Stats[? "Multi_DamageIntakeMultiplierAmt"];
var mID=Stats[? "Multi_DamageIntakeMultiplierDur"];
mIA[? GetMultiStatsString_Spells(MapStr)]=2
mID[? GetMultiStatsString_Spells(MapStr)]=1

var mOA=Stats[? "Multi_DamageOutputMultiplierAmt"];
var mOD=Stats[? "Multi_DamageOutputMultiplierDur"];
mOA[? GetMultiStatsString_Spells(MapStr)]=2
mOD[? GetMultiStatsString_Spells(MapStr)]=1

player_con_CardholdersUpdateMultiStats()

