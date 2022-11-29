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
                CameraXoffset=0;CameraYoffset=0;//reset camera panning
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
                CameraXoffset=0;CameraYoffset=0;//reset camera panning
            }
            CameraFocus=socket_to_instanceid[? Turnstage[CameraFocusNo]];
        }else{
            CameraFocus=socket_to_instanceid[? Turnstage[Turn]];
        }
    }
    view_xview[0]=lerp(view_xview[0],CameraFocus.Homex-view_wview[0]/2+CameraXoffset,0.07)
    view_yview[0]=lerp(view_yview[0],CameraFocus.Homey-view_hview[0]/2+CameraYoffset,0.07)
    
    //camera dragging
    if global.SelectedCard=noone
    && global.HoveredCard=noone{
        var _mxoff=(mouse_x-CameraFocus.Homex)*2.5
        var _myoff=(mouse_y-CameraFocus.Homey)*2.5
        if mouse_check_button_pressed(mb_left){
            CameraXoffsetStart=(CameraXoffset+_mxoff)
            CameraYoffsetStart=(CameraYoffset+_myoff)
            CameraIsDrag=true
        }
        if CameraIsDrag && mouse_check_button(mb_left){
            CameraXoffset=(CameraXoffsetStart-_mxoff)
            CameraYoffset=(CameraYoffsetStart-_myoff)
        }
    }
    if mouse_check_button_released(mb_left){
        CameraIsDrag=false
    }
    var _amt=10
    if mouse_wheel_down(){
        view_wview[0]+=16*_amt
        view_hview[0]+=9*_amt
    }
    if mouse_wheel_up(){
        view_wview[0]-=16*_amt
        view_hview[0]-=9*_amt
    }
}
