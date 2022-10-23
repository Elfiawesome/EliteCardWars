//scr_menu_update_deckfile()
//getting string to write
var _m=ds_map_create();
//writing all data
//writing version
_m[? "Version"]=global.Version
//writing hero
_m[? "Hero"]=global.PlayerHero
//writing decklist
var _l=ds_list_create();ds_list_copy(_l,global.PlayerDeck);
ds_map_add_list(_m,"DeckList",_l)
//writing spellslist
var _l=ds_list_create();ds_list_copy(_l,global.PlayerSpells);
ds_map_add_list(_m,"SpellsList",_l)

//converting json into string
var _string=json_encode_destroy(_m)
_string=json_beautify(_string)
//writing into file
var _dir=working_directory+"DeckList.txt"
file = file_text_open_write(_dir);
file_text_write_string(file,_string);
file_text_close(file);
