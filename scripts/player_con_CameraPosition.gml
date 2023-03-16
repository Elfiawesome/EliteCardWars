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
    var RelMinCamX=MinCamX-view_wview[0]/2;//we do this so that we can adjust when there is zoom in/out
    var RelMaxCamX=MaxCamX-view_wview[0]/2;
    var RelMinCamY=MinCamY-view_hview[0]/2;
    var RelMaxCamY=MaxCamY-view_hview[0]/2;
    view_xview[0]=clamp(view_xview[0],RelMinCamX,RelMaxCamX)
    view_yview[0]=clamp(view_yview[0],RelMinCamY,RelMaxCamY)
    
    //camera dragging
    if global.SelectedCard=noone{
        var _mxoff=(mouse_x-CameraFocus.Homex)*2.5
        var _myoff=(mouse_y-CameraFocus.Homey)*2.5
        if mouse_check_button_pressed(mb_left){
            CameraXoffsetStart=(CameraXoffset+_mxoff)
            CameraYoffsetStart=(CameraYoffset+_myoff)
            CameraIsDrag=true
        }
        if CameraIsDrag && mouse_check_button(mb_left){
            CameraXoffset=clamp( 
                (CameraXoffsetStart-_mxoff),
                RelMinCamX-CameraFocus.Homex+view_wview[0]/2, 
                RelMaxCamX-CameraFocus.Homex+view_wview[0]/2
            )
            CameraYoffset=clamp(
                (CameraYoffsetStart-_myoff),
                RelMinCamY-CameraFocus.Homey+view_hview[0]/2, 
                RelMaxCamY-CameraFocus.Homey+view_hview[0]/2
            )
        }
    }
    if mouse_check_button_released(mb_left){
        CameraIsDrag=false
    }
    //zooming in and out
    var _amt=10
    if TgtViewWidth < (MaxCamX-MinCamX)*1.5 || TgtViewHeight < (MaxCamY-MinCamY)*1.5{
        if mouse_wheel_down(){
            TgtViewWidth+=16*_amt
            TgtViewHeight+=9*_amt
        }
    }
    if TgtViewWidth > 500{
        if mouse_wheel_up(){
            TgtViewWidth-=16*_amt
            TgtViewHeight-=9*_amt
        }
    }
    view_wview[0]=lerp(view_wview[0],TgtViewWidth,0.07)
    view_hview[0]=lerp(view_hview[0],TgtViewHeight,0.07)
}
