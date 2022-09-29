///player_con_PlacingUnitCardDown_For_UnitCardOnMe()
if position_meeting(mouse_x,mouse_y,obj_cardholder) && instance_exists(global.SelectedCard) && global.SelectedCard.CardType=0{
    var _cardholder=instance_position(mouse_x,mouse_y,obj_cardholder)
    if IsAbilityTrigger(_cardholder.CardID,AbilityTrigger.UnitCardOnMe)!=-1{
    if mysocket=_cardholder.mysocket && _cardholder.CardID!=0{
    if global.NetworkObj.Turnstage[global.NetworkObj.Turn]=mysocket && global.UnitDat_AbilityTargetSelectCheck[_cardholder.CardID]{
        with(global.NetworkObj){
            if global.NetworkObj.object_index=obj_server{
                svr_ActivateUnitCardOnMe(mysocket,_cardholder.Pos,global.SelectedCard.CardID)
            }
            if global.NetworkObj.object_index=obj_client{
                buffer=buffer_create(1024,buffer_fixed,1)
                buffer_write(buffer,buffer_s16,NETWORKPKT.ACTIVATEUNITCARDONME)
                buffer_write(buffer,buffer_s16,_cardholder.mysocket)
                buffer_write(buffer,buffer_s16,_cardholder.Pos)
                buffer_write(buffer,buffer_s16,global.SelectedCard.CardID)
                network_send_packet(client,buffer,buffer_tell(buffer))
                buffer_delete(buffer)
            }
        }
    instance_destroy(global.SelectedCard)
    ds_list_delete(cardList,ds_list_find_index(cardList,global.SelectedCard))
    }
    }
    }
}
