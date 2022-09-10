///player_con_CardSelectorControl()
if !ds_list_empty(GUIObjectOrder){
if GUIObjectOrder[| 0].object_index=obj_cardselector_control{
    var CardSelectorControl=GUIObjectOrder[| 0]
    if CardSelectorControl.SelectedCardID>0{//if card is selected
        //activate ability
        if CardSelectorControl.CardHolderInitiator!=-1{
            var newID=CardSelectorControl.SelectedCardID;
            //set up map
            _map=ds_map_create()
            var _attacker=CardSelectorControl.CardHolderInitiator;
            _map[? "AttackerPos"]=_attacker.Pos
            _map[? "AttackerSock"]=_attacker.mysocket
            _map[? "SelectionID"]=CardSelectorControl.SelectedCardID
            var _mapstr=json_encode_destroy(_map)
            
            //remove from GUI object list
            ds_list_delete(GUIObjectOrder,0)
            
            //Send to other clients
            with(global.NetworkObj){
                if global.NetworkObj.object_index=obj_server{
                    svr_ActivateAfterCardSelection(_mapstr)
                }
                if global.NetworkObj.object_index=obj_client{
                    buffer=buffer_create(1024,buffer_fixed,1)
                    buffer_write(buffer,buffer_s16,NETWORKPKT.ACTIVATEAFTERCARDSELECTION)
                    buffer_write(buffer,buffer_string,_mapstr)
                    network_send_packet(client,buffer,buffer_tell(buffer))
                    buffer_delete(buffer)
                }
            }
        }
    }
    if CardSelectorControl.AnimationStage=3{//if exited prematurely
        //remove from GUI object list
        ds_list_delete(GUIObjectOrder,0)
    }
}
}
