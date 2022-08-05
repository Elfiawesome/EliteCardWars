///scr_ability_D2_Psion()
var MapStr=argument0;
with(MapStr[? "Victim"]){
    Stats[? "Hp"]=-100
}
ds_map_destroy(MapStr)
