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
        //global.GameStage=GAMESTAGE.PLAYERTURNS
    }else{
        //global.GameStage=GAMESTAGE.ATTACKINGTURN
        switch(global.GameStage){
            case GAMESTAGE.PLAYERTURNS:
                Turn=0
                global.GameStage=GAMESTAGE.ATTACKINGTURN
            break;
            case GAMESTAGE.ATTACKINGTURN:
                Turn=0
                EndOfAttackingTurnChecks()
                GameLifespan++
                socket_to_instanceid[? mysocket].Points=global.TurnPointArray[
                clamp(GameLifespan,0,array_length_1d(global.TurnPointArray)-1)
                ]
                global.GameStage=GAMESTAGE.PLAYERTURNS
            break;
        }
    }
    
}

