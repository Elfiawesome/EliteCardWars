///scr_ability_SouthPark_BountyHunterKyle_Kill()
var MapStr=argument0;

var _mycon=global.NetworkObj.socket_to_instanceid[? mysocket]
for(var i=0;i<ds_list_size(_mycon.Cardholderlist);i++){
    if _mycon.Cardholderlist[| i]!=id{
    with(_mycon.Cardholderlist[| i]){
        //heal by 5
        GameEvent_cardholders_heal(5)
    }
    }
}
