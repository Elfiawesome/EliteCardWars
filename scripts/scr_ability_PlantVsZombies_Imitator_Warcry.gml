///scr_ability_PlantVsZombies_Imitator_Warcry()
var MapStr=argument0;

//give selection if you are the socket
if mysocket=global.NetworkObj.mysocket{
    var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
    //creating selector
    var _o=instance_create(0,0,obj_cardselector_control)
    for(var i=1;i<(UnitID.UnitID_MAX);i++){
        if (global.UnitDat_Pt[i]+3)<=_con.Points{
            ds_list_add(_o.cardlist,i)
        }
    }
    _o.CardHolderInitiator=id
    _o.ControlParent=_con
    ds_list_add(_con.GUIObjectOrder,_o)
}
