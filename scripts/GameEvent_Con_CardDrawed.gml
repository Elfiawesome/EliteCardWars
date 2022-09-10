if global.GameStage=GAMESTAGE.PLAYERTURNS{
    if Turn<(array_length_1d(Turnstage)){
        if Turnstage[Turn]=mysocket{
            var _choosecard=instance_create(0,0,obj_carddrawer_control);
            _choosecard.ControlParent=socket_to_instanceid[? mysocket]
        }
    }
}
