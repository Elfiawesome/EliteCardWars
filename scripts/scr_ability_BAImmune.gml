///scr_ability_BAImmune()
var MapStr=argument0;

//Stats[? "IsBAImmune"]=clamp(Stats[? "IsBAImmune"]+1,1,2)
var _mii=Stats[? "Multi_IsBAImmune"];
_mii[? string(id)]=1
player_con_CardholdersUpdateMultiStats()
