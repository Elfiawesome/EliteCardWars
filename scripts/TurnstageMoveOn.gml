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
            case GAMESTAGE.PLAYERTURNS://start of attacking turn
                Turn=0
                CameraFocusNo=Turn
                global.GameStage=GAMESTAGE.ATTACKINGTURN
                //run spellsys spells scripts
                with(global.SpellSys){
                    var SQ=SpellsQueue[SpellType.Weather]
                    var _l=ds_list_create()
                    for(var i=0;i<ds_list_size(SQ);i++){
                        var spellMap=SQ[| i]
                        var spellID=spellMap[? "ID"]
                        var _no=IsSpellTrigger(spellID,SpellTrigger.StartOfBattle)
                        if _no!=-1{
                            var _IsCompleted=script_execute(global.SpellDat_SpellScript[spellID,_no],spellMap)
                            if _IsCompleted{
                                //ds_map_destroy(SQ[| i]);ds_list_delete(SQ,i);i--//alternative usage? i dunno it may work
                                ds_list_add(_l,SQ[| i])
                            }
                        }
                    }
                    for(var i=0;i<ds_list_size(_l);i++){ds_map_destroy(_l[| i]);ds_list_delete(SQ,ds_list_find_index(SQ,_l[| i]));}ds_list_destroy(_l)
                }
            break;
            case GAMESTAGE.ATTACKINGTURN://end of attacking turn
                Turn=0
                EndOfAttackingTurnChecks()
                GameLifespan++
                //reimburse all the players points
                GameEvent_Con_ReimbursePoints()
                global.GameStage=GAMESTAGE.PLAYERTURNS
            break;
        }
    }
    GameEvent_Con_CardDrawed()
}

