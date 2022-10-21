///player_con_PlacingUnitCardDown()
if position_meeting(mouse_x,mouse_y,obj_cardholder) && instance_exists(global.SelectedCard) && global.SelectedCard.CardType=0{
    var _cardholder=instance_position(mouse_x,mouse_y,obj_cardholder)
    if mysocket=_cardholder.mysocket && _cardholder.CardID=0{
    if global.GameStage=GAMESTAGE.PLAYERTURNS && global.NetworkObj.Turnstage[global.NetworkObj.Turn]=mysocket{
    if Points>=GetPointDeductionValue(global.UnitDat_Pt[global.SelectedCard.CardID]){
    Points-=GetPointDeductionValue(global.UnitDat_Pt[global.SelectedCard.CardID])
        with(global.NetworkObj){
            if global.NetworkObj.object_index=obj_server{
                svr_SummonCard(mysocket,_cardholder.Pos,global.SelectedCard.CardID)
            }
            if global.NetworkObj.object_index=obj_client{
                buffer=buffer_create(1024,buffer_fixed,1)
                buffer_write(buffer,buffer_s16,NETWORKPKT.SUMMONCARD)
                buffer_write(buffer,buffer_s16,_cardholder.Pos)
                buffer_write(buffer,buffer_s16,global.SelectedCard.CardID)
                network_send_packet(client,buffer,buffer_tell(buffer))
                buffer_delete(buffer)
            }
        }
    scr_RemoveAndDestroyCardFromHand(global.SelectedCard)
    }
    }
    }
}
