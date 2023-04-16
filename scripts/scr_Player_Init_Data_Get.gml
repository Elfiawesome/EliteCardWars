///scr_Player_Init_Data_Get(object)
var inst=argument0
var _m = ds_map_create();
_m[? "Name"]=inst.name
_m[? "Team"]=inst.Team
_m[? "Deck"]=ds_list_write(inst.DeckList)
//_m[? "Spell"]=ds_list_write(inst.SpellList)
_m[? "Hero"]=inst.PlayerHeroID

_m[? "IsBot"]=inst.IsBot
_m[? "IsRaidBoss"]=inst.IsRaidBoss
_m[? "RaidBotIdentifier"]=inst.RaidBotIdentifier
_m[? "AI_PlacingDownUnits"]=inst.AI_PlacingDownUnits
_m[? "AI_SelectingVictims"]=inst.AI_SelectingVictims
_m[? "NonRemovableBot"]=inst.NonRemovableBot

var str=json_encode_destroy(_m);
return str



