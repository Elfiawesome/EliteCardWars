///scr_ability_PlantVsZombies_Imitator_AfterCardSelectionCancel()
var MapStr=argument0;

//give the card if you are the socket
if mysocket=global.NetworkObj.mysocket{
    with(global.NetworkObj.socket_to_instanceid[? global.NetworkObj.mysocket]){
        GameEvent_draw_specific_card(UnitID.PlantVsZombies_Imitator)
    }
}
//refund points [1]
with(global.NetworkObj.socket_to_instanceid[? mysocket]){
    Points+=global.UnitDat_Pt[UnitID.PlantVsZombies_Imitator]
}
GameEvent_cardholders_Clear()
//ability is completed
Stats[? "AbilityAlrdy"]=true

