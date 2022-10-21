///GameEvent_cardholders_Death
if CardID!=0{
    var _con=global.NetworkObj.socket_to_instanceid[? mysocket];
    ds_list_add(_con.DeadCardList,CardID)
    ds_list_add(_con.DeadCardListTurn,global.NetworkObj.GameLifespan)
}
GameEvent_cardholders_Clear()
