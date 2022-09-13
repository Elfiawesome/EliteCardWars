///scr_spell_MadnessCombat_SaviorsHalo_WhenCasted
var MapStr=argument0;
show_message("RNED")
var _mii=Stats[? "Multi_IsBAImmune"];
_mii[? "Spell_"+string(MapStr)]=5
player_con_CardholdersUpdateMultiStats()


