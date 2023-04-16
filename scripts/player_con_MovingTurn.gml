///player_con_MovingTurn()
if CanEndTurn{
    with(global.NetworkObj){
        //if my turn
        if Turnstage[Turn]=mysocket{
            if keyboard_check_pressed(vk_space) || other.IsEndTurnButton{
                if global.NetworkObj.object_index=obj_server{
                    svr_TurnstageMoveOn()
                }
                if global.NetworkObj.object_index=obj_client{
                    buffer=buffer_create(1024,buffer_fixed,1)
                    buffer_write(buffer,buffer_s16,NETWORKPKT.TURNMOVEON)
                    network_send_packet(client,buffer,buffer_tell(buffer))
                    buffer_delete(buffer)
                }
            }
        } 
    }
}
