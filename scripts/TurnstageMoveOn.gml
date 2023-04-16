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
    IsHeroSelected=false
    ds_list_clear(global.NetworkObj.SelectedCardHolders_Ability)
    ds_list_clear(global.NetworkObj.SelectedCardHolders)
    
    //switching turn types
    if Turn<(array_length_1d(Turnstage)-1){
        Turn++
        CameraFocusNo=Turn
    }else{
        switch(global.GameStage){
            case GAMESTAGE.PLAYERTURNS://start of attacking turn
                Turn=0
                CameraFocusNo=Turn
                global.GameStage=GAMESTAGE.ATTACKINGTURN
                //run spellsys spells scripts
                with(global.SpellSys){SpellsIsRun[SpellType.Weather]=true}
            break;
            case GAMESTAGE.ATTACKINGTURN://end of attacking turn
                Turn=0
                CameraFocusNo=Turn
                EndOfAttackingTurnChecks()
                GameLifespan++
                //reimburse all the players points
                GameEvent_Con_ReimbursePoints()
                global.GameStage=GAMESTAGE.PLAYERTURNS
            break;
        }
    }
    if !instance_exists(obj_GameEndAnnouncement){
    var _con=socket_to_instanceid[? mysocket]
    if !(ds_list_empty(_con.DeckList) && ds_list_empty(_con.SpellList)){//check there is a reason to draw
        GameEvent_Con_CardDrawed()
    }
    if Turn<(array_length_1d(Turnstage)) && Turnstage[Turn]=mysocket{
        var _t=""
        if global.GameStage=GAMESTAGE.PLAYERTURNS{_t="Player"}
        if global.GameStage=GAMESTAGE.ATTACKINGTURN{_t="Attacking"}
        scr_CreateEndOfTurnAnnouncment("Your "+_t+" Turn",c_white,c_black,TeamColorOf(socket_to_instanceid[? mysocket].Team))
    }
    }
}
CameraIsDrag=false
CameraXoffset=0
CameraYoffset=0
