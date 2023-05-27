//scr_menu_update_deckfile_v002()
//getting string to write
var _m=ds_map_create();
//writing all data
//writing version
_m[? "Version"]=global.Version
//writing hero
_m[? "Hero"]=global.PlayerHero
//writing decklist
var _l=ds_list_create();
for(var i=0;i<ds_list_size(global.PlayerDeck);i++){
    ds_list_add(_l, global.UnitDat_Name[global.PlayerDeck[| i]])
}
ds_map_add_list(_m,"DeckList",_l)
//writing spellslist
var _l=ds_list_create();
for(var i=0;i<ds_list_size(global.PlayerSpells);i++){
    ds_list_add(_l, global.SpellDat_Name[global.PlayerSpells[| i]])
}
ds_map_add_list(_m,"SpellsList",_l)

//converting json into string
var _string=json_encode_destroy(_m)
_string=json_beautify(_string)
//writing into file
var _dir=working_directory+"DeckList.txt"
file = file_text_open_write(_dir);
file_text_write_string(file,_string);
file_text_close(file);
