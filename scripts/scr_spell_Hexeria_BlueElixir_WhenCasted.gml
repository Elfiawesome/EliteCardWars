///scr_spell_Hexeria_BlueElixir_WhenCasted(Mapstr)
var MapStr=argument0;

with(MapStr[? "Target"]){
    Stats[? "Hp"]+=200
}

ds_map_destroy(MapStr)
