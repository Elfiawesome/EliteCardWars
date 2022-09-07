///player_con_CardSelectorControl()
if !instance_exists(CardSelectorControl){
    CardSelectorControl=noone
}
if CardSelectorControl!=noone{
    if CardSelectorControl.SelectedCardID>0{
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
            //End this... [Remove Selector control from this basically]
            CardSelectorControl=noone
        }
    }
}
