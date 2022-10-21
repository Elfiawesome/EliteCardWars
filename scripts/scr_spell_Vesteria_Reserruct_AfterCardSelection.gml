///scr_spell_Vesteria_Reserruct_AfterCardSelection()
var MapStr=argument0;
var selection=MapStr[? "SelectionID"];
//delete this spell
var _l=Stats[? "Spells"]
ds_list_delete(_l,ds_list_size(_l)-1)
//summon card
SummonCard(id,selection)
//remove card from dead card list
with(global.NetworkObj.socket_to_instanceid[? mysocket]){
    ds_list_delete(DeadCardListTurn,ds_list_find_index(DeadCardList,selection))
    ds_list_delete(DeadCardList,ds_list_find_index(DeadCardList,selection))
    Points-=GetPointDeductionValue(global.SpellDat_Pt[SpellID.Vesteria_Reserruct])
}
