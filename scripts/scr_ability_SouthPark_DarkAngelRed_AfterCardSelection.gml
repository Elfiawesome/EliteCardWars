///scr_ability_SouthPark_DarkAngelRed_AfterCardSelection()
var MapStr=argument0;
var selection=MapStr[? "SelectionID"];
if mysocket=global.NetworkObj.mysocket{
    with(global.NetworkObj.socket_to_instanceid[? mysocket]){
        GameEvent_draw_specific_card(selection)
    }
}
var _con=global.NetworkObj.socket_to_instanceid[? mysocket];
with(_con){
    ds_list_delete(DeadCardList,ds_list_find_index(DeadCardList,selection))
}
Stats[? "AbilityAlrdy"]=true
Stats[? "AbilityCooldown"]=-1
ds_map_destroy(MapStr)
