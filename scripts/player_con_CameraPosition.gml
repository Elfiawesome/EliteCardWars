///player_con_CameraPosition()
with(global.NetworkObj){
    //camera follow person's battlefield
    if global.GameStage=GAMESTAGE.PLAYERTURNS{
        //CameraFocus=socket_to_instanceid[? Turnstage[Turn]];
        //CameraFocusNo=Turn
    }
    if global.GameStage=GAMESTAGE.ATTACKINGTURN || global.GameStage=GAMESTAGE.PLAYERTURNS{
        if Turnstage[Turn]=mysocket{
            if keyboard_check_pressed(ord("Z")){
                CameraFocusNo=Turn
            }
            if keyboard_check_pressed(ord("X")){
            if !keyboard_check(vk_lshift){
                if CameraFocusNo<(array_length_1d(Turnstage)-1){
                        CameraFocusNo++
                }else{
                    CameraFocusNo=0
                }
            }else{
                if CameraFocusNo>0{
                        CameraFocusNo--
                }else{
                    CameraFocusNo=array_length_1d(Turnstage)-1
                }            
            }
            }
            CameraFocus=socket_to_instanceid[? Turnstage[CameraFocusNo]];
        }else{
            CameraFocus=socket_to_instanceid[? Turnstage[Turn]];
        }
    }
    
    view_xview[0]=lerp(view_xview[0],CameraFocus.Homex-view_wview[0]/2,0.07)
    view_yview[0]=lerp(view_yview[0],CameraFocus.Homey-view_hview[0]/2,0.07)
    //if my turn
    if Turnstage[Turn]=mysocket{
        if keyboard_check_pressed(vk_space){
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
