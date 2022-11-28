///scr_ability_SouthPark_DarkAngelRed_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]

//run animation of ability
var victimList=ds_list_create()
ds_list_add(victimList,vict)
ani_AttackSet_basic(atkr,victimList)
ds_list_destroy(victimList)

//give selection if you are the socket
if mysocket=global.NetworkObj.mysocket{
    var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
    //creating selector
    var _o=instance_create(0,0,obj_cardselector_control)
    for(var i=0;i<ds_list_size(_con.DeadCardList);i++){
        if global.UnitDat_Pt[_con.DeadCardList[| i]]<=10{
            ds_list_add(_o.cardlist,_con.DeadCardList[| i])
        }
    }
    _o.CardHolderInitiator=id
    _o.ControlParent=_con
    ds_list_add(_con.GUIObjectOrder,_o)
}
//Sacrifice the cardholder
with(vict){
    Stats[? "Finalized_Hp"]=0
    GameEvent_cardholders_AfterDamaged(id)
    GameEvent_cardholders_Death()
}

//remove from selected
if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
    ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
}
MapStr[? "Attacker"].IsSelected_Ability=false


ds_map_destroy(MapStr)

