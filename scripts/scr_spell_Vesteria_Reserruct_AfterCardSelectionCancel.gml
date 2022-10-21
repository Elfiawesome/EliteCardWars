///scr_spell_Vesteria_Reserruct_AfterCardSelectionCancel()
var MapStr=argument0;
//delete this spell
var _l=Stats[? "Spells"]
ds_list_delete(_l,ds_list_size(_l)-1)
//refund spell card
if global.NetworkObj.mysocket=mysocket{
    with(global.NetworkObj.socket_to_instanceid[? mysocket]){
        var _c=GameEvent_draw_specific_card(SpellID.Vesteria_Reserruct,1);_c.CardType=1
    }
}
GameEvent_cardholders_Clear()
