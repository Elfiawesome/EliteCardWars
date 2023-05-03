///scr_ability_MadnessCombat_HankJwimbleton_Deathwish()
var MapStr=argument0;

//give the card if you are the socket
if !Stats[? "AbilityAlrdy"]{
if mysocket=global.NetworkObj.mysocket{
    with(global.NetworkObj.socket_to_instanceid[? global.NetworkObj.mysocket]){
        GameEvent_draw_specific_card(UnitID.MadnessCombat_MagHank,0)
    }
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
}

