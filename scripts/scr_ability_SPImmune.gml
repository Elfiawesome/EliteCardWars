///scr_ability_SPImmune()
var MapStr=argument0;

//Stats[? "IsSPImmune"]=clamp(Stats[? "IsSPImmune"]+1,1,2)
var _mii=Stats[? "Multi_IsSPImmune"];
_mii[? string(id)]=1
player_con_CardholdersUpdateMultiStats()
