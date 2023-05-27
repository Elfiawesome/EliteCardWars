///scr_menu_load_deckfile_v001(MapData)
var _m = argument0
//reading Decklist
_h=_m[? "Hero"]
if !is_undefined(_h){global.PlayerHero=_h}
//reading Decklist
_l=_m[? "DeckList"]
if !is_undefined(_l){ds_list_copy(global.PlayerDeck,_l)}
//reading SpellList
_l=_m[? "SpellsList"]
if !is_undefined(_l){ds_list_copy(global.PlayerSpells,_l)}
