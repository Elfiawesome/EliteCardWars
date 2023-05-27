///scr_menu_convert_001_to_002(_m)
var _oldfile = argument0

//getting string to write
var _m=ds_map_create();
//writing all data
//writing version
_m[? "Version"]=global.Version
//writing hero
_m[? "Hero"]=_oldfile[? "Hero"]
//writing decklist
var _l=ds_list_create()
var _oldl = _oldfile[? "DeckList"]
for(var i=0;i<ds_list_size(_oldl);i++){
    ds_list_add(_l, global.UnitDat_Name[_oldl[| i]])
}
ds_map_add_list(_m,"DeckList",_l)
//writing spellslist
var _l=ds_list_create()
var _oldl = _oldfile[? "SpellsList"]
for(var i=0;i<ds_list_size(_oldl);i++){
    ds_list_add(_l, global.SpellDat_Name[_oldl[| i]])
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


