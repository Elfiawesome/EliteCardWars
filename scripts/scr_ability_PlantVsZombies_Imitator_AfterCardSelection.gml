///scr_ability_PlantVsZombies_Imitator_AfterCardSelection()
var MapStr=argument0;
var selection=MapStr[? "SelectionID"];
GameEvent_cardholders_Transform(selection)
with(global.NetworkObj.socket_to_instanceid[? mysocket]){
    Points-=(global.UnitDat_Pt[selection]+3)
}
