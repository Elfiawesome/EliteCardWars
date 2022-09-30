///scr_spell_Payday2_Inspire_AfterCardSelection()
var MapStr=argument0;
var selection=MapStr[? "SelectionID"];
//delete this spell
var _l=Stats[? "Spells"]
ds_list_delete(_l,ds_list_size(_l)-1)
//summon card
SummonCard(id,selection)
//reduce health
Stats[? "Hp"]=ceil(Stats[? "Hp"]/3)
player_con_CardholdersUpdateMultiStats()
//remove card from dead card list
with(global.NetworkObj.socket_to_instanceid[? mysocket]){
    ds_list_delete(DeadCardList,ds_list_find_index(DeadCardList,selection))
}
