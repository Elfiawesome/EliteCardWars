///scr_spell_RedAlert3_ObservationPost_WhenCasted()
var MapStr=argument0

var _tgtcon=global.NetworkObj.socket_to_instanceid[? mysocket];
var _loccon=global.NetworkObj.socket_to_instanceid[? global.NetworkObj.mysocket];

if global.NetworkObj.mysocket!=mysocket{
    //creating selector
    var _o=instance_create(0,0,obj_handcardselector_control)
    for(var i=0;i<ds_list_size(_tgtcon.HandCards);i++){
        var _m=json_decode(_tgtcon.HandCards[| i]);
        var _ID=_m[? "ID"]
        var _Type=_m[? "Type"]
        ds_map_destroy(_m);
        ds_list_add(_o.cardlist,_ID)
        ds_list_add(_o.cardtypelist,_Type)
    }
    _o.CardHolderInitiator=-1
    _o.ControlParent=_loccon
    ds_list_add(_loccon.GUIObjectOrder,_o)
}

