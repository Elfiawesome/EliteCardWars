///scr_spell_MadnessCombat_SaviorsHalo_StartAndEndOfTurn
var MapStr=argument0;
var _mii=Stats[? "Multi_IsBAImmune"];
_mii[? "Spell_"+string(MapStr)]=2
player_con_CardholdersUpdateMultiStats()


