///scr_Player_Init_Data_Set(object,string map)
var inst=argument0
var str=argument1
//decode string into map
var _m=json_decode(str)
//insert map values into the object
with(inst){
if ds_map_exists(_m,"Name"){name=_m[? "Name"]}
if ds_map_exists(_m,"Team"){Team=_m[? "Team"]}
if ds_map_exists(_m,"Deck"){var _templist=ds_list_create();ds_list_read(_templist,_m[? "Deck"]);ds_list_copy(DeckList,_templist);}
if ds_map_exists(_m,"Spell"){var _templist=ds_list_create();ds_list_read(_templist,_m[? "Spell"]);ds_list_copy(SpellList,_templist);}
if ds_map_exists(_m,"Hero"){PlayerHeroID=_m[? "Hero"]}



//if ds_map_exists(_m,"IsBot"){IsBot=_m[? "IsBot"]}
if ds_map_exists(_m,"IsRaidBoss"){IsRaidBoss=_m[? "IsRaidBoss"]}
if ds_map_exists(_m,"RaidBotIdentifier"){RaidBotIdentifier=_m[? "RaidBotIdentifier"]}
if ds_map_exists(_m,"AI_PlacingDownUnits"){AI_PlacingDownUnits=_m[? "AI_PlacingDownUnits"]}
if ds_map_exists(_m,"AI_SelectingVictims"){AI_SelectingVictims=_m[? "AI_SelectingVictims"]}
if ds_map_exists(_m,"NonRemovableBot"){NonRemovableBot=_m[? "NonRemovableBot"]}
}

//destroy map
ds_map_destroy(_m)



