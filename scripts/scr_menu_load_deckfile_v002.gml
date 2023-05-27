///scr_menu_load_deckfile_v002(MapData)
var _m = argument0
//reading Hero
_h=_m[? "Hero"]
if !is_undefined(_h){global.PlayerHero=_h}

//Creating conversion maps
var _UnitNameToIndex = ds_map_create()
for(i=0;i<UnitID.UnitID_MAX-1;i+=1){
    _UnitNameToIndex[? global.UnitDat_Name[i]] = i
}
var _SpellNameToIndex = ds_map_create()
for(i=0;i<SpellID.SpellID_MAX-1;i+=1){
    _SpellNameToIndex[? global.SpellDat_Name[i]] = i
}
//reading Decklist
_l=_m[? "DeckList"]
if !is_undefined(_l){
    for(var i=0;i<ds_list_size(_l);i+=1){
        var _index = _UnitNameToIndex[? _l[| i]]
        if !is_undefined(_index){
            ds_list_add(global.PlayerDeck,_index)
        }
    }
}
//reading SpellList
_l=_m[? "SpellsList"]
if !is_undefined(_l){
    for(var i=0;i<ds_list_size(_l);i+=1){
        var _index = _SpellNameToIndex[? _l[| i]]
        if !is_undefined(_index){
            ds_list_add(global.PlayerSpells,_index)
        }
    }
}
//Destroy conversion maps
ds_map_destroy(_UnitNameToIndex)
ds_map_destroy(_SpellNameToIndex)
