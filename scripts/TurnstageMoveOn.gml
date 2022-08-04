///TurnstageMoveOn()
if Turn>=0{
    if Turn<(array_length_1d(Turnstage)-1){
        Turn++
        //global.GameStage=GAMESTAGE.PLAYERTURNS
    }else{
        //Turn=-1
        //global.GameStage=GAMESTAGE.ATTACKINGTURN
    switch(global.GameStage){
        case GAMESTAGE.PLAYERTURNS:
            Turn=0
            global.GameStage=GAMESTAGE.ATTACKINGTURN
        break;
        case GAMESTAGE.ATTACKINGTURN:
            Turn=0
            EndOfAttackingTurnChecks()
            global.GameStage=GAMESTAGE.PLAYERTURNS
        break;
    }
    }
    
}
/*else{
    EndOfAttackingTurnChecks()
    global.GameStage=GAMESTAGE.PLAYERTURNS
    ds_list_clear(ReadySocket)
    Turn=0
}
