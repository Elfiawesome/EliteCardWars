///scr_spell_Hexeria_Purify_WhenCasted
var MapStr=argument0;

//remove IsFrozen
var _l=ds_list_create()
var _m=Stats[? "Multi_IsFrozen"];
for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{ds_list_add(_l,k)}}
for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);};ds_list_clear(_l)


//remove debuff spells
var spells=Stats[? "Spells"]
for(var i=0;i<ds_list_size(spells);i++){
    var _m=spells[| i]
    if global.SpellDat_IsDebuff[_m[? "ID"]]=true{
        ds_list_add(_l,_m)
    }
}
for(var _i=0;_i<ds_list_size(_l);_i++){
    ds_map_destroy(_l[| _i])
    ds_list_delete(spells,ds_list_find_index(spells,_l[| _i]))
};
ds_list_clear(_l)

ds_list_destroy(_l)


