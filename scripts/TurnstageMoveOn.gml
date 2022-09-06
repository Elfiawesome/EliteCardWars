///TurnstageMoveOn()
if Turn>=0{
    //clear all selected cardholders
    for(var i=0;i<ds_list_size(global.NetworkObj.SelectedCardHolders_Ability);i++){
        with(global.NetworkObj.SelectedCardHolders_Ability[| i]){
            IsSelected_Ability=false
        }
    }
    for(var i=0;i<ds_list_size(global.NetworkObj.SelectedCardHolders);i++){
        with(global.NetworkObj.SelectedCardHolders[| i]){
            IsSelected=false
        }
    }
    ds_list_clear(global.NetworkObj.SelectedCardHolders_Ability)
    ds_list_clear(global.NetworkObj.SelectedCardHolders)
    
    
    //switching turn types
    if Turn<(array_length_1d(Turnstage)-1){
        Turn++
        CameraFocusNo=Turn
    }else{
        switch(global.GameStage){
            case GAMESTAGE.PLAYERTURNS:
                Turn=0
                CameraFocusNo=Turn
                global.GameStage=GAMESTAGE.ATTACKINGTURN
            break;
            case GAMESTAGE.ATTACKINGTURN:
                Turn=0
                EndOfAttackingTurnChecks()
                GameLifespan++
                //reimburse all the players points
                GameEvent_Con_ReimbursePoints()
                global.GameStage=GAMESTAGE.PLAYERTURNS
            break;
        }
    }
}

