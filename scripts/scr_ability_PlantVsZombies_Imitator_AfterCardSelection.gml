///scr_ability_PlantVsZombies_Imitator_AfterCardSelection()
var MapStr=argument0;
var selection=MapStr[? "SelectionID"];
with(global.NetworkObj.socket_to_instanceid[? mysocket]){
    Points-=(global.UnitDat_Pt[selection]+3)
    ds_list_delete(DeckList,ds_list_find_index(DeckList,selection))
}
GameEvent_cardholders_Transform(selection)
