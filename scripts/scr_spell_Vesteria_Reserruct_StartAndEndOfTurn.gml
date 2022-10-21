///scr_spell_Vesteria_Reserruct_StartAndEndOfTurn()
var MapStr=argument0;

var _con=global.NetworkObj.socket_to_instanceid[? mysocket];
with(_con){Points+=GetPointDeductionValue(global.SpellDat_Pt[SpellID.Vesteria_Reserruct]);}
if mysocket=global.NetworkObj.mysocket{
    //creating selector
    var _o=instance_create(0,0,obj_cardselector_control)
    for(var i=0;i<ds_list_size(_con.DeadCardList);i++){
        if (global.NetworkObj.GameLifespan - _con.DeadCardListTurn[| i]) <= 3{
            ds_list_add(_o.cardlist,_con.DeadCardList[| i])
        }
    }
    _o.CardHolderInitiator=id
    _o.ControlParent=_con
    ds_list_add(_con.GUIObjectOrder,_o)
}

