///scr_ability_PlantVsZombies_Imitator_Warcry()
var MapStr=argument0;

//give selection if you are the socket
if mysocket=global.NetworkObj.mysocket{
    var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
    //creating selector
    var _o=instance_create(0,0,obj_cardselector_control)
    for(var i=0;i<ds_list_size(_con.DeckList);i++){
        if (global.UnitDat_Pt[_con.DeckList[| i]]+3)<=_con.Points{
            ds_list_add(_o.cardlist,_con.DeckList[| i])
        }
    }
    _o.CardHolderInitiator=id
    _o.ControlParent=_con
    ds_list_add(_con.GUIObjectOrder,_o)
}
