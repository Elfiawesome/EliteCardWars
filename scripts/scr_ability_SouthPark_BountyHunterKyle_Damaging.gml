///scr_ability_SouthPark_BountyHunterKyle_Damaging()
var MapStr=argument0;

var _mycon=global.NetworkObj.socket_to_instanceid[? mysocket]
for(var i=0;i<ds_list_size(_mycon.Cardholderlist);i++){
    with(_mycon.Cardholderlist[| i]){
        //increase atk of allies
        Stats[? "Atk"]+=4
        Stats[? "Base_Atk"]+=4
        player_con_CardholdersUpdateMultiStats()
    }
}
