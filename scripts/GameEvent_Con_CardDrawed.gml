if global.GameStage=GAMESTAGE.PLAYERTURNS{
    if Turn<(array_length_1d(Turnstage)){
        if Turnstage[Turn]=mysocket{
            var _choosecard=instance_create(0,0,obj_carddrawer_control);
            _choosecard.ControlParent=socket_to_instanceid[? mysocket]
            _choosecard.Draws=socket_to_instanceid[? mysocket].Hero.Stats[? "DrawsLeft"]
            ds_list_add(socket_to_instanceid[? mysocket].GUIObjectOrder,_choosecard)
        }
    }
}
