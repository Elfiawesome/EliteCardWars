///SetupStartGame()
var _teammap=argument0
//shuffle deck
//with(socket_to_instanceid[? socketlist[| mysocket]]){}
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        ds_list_shuffle(DeckList)
        ds_list_shuffle(SpellList)
    }
}
//setting up Team Map
update_json_TeamMap()
//create card holders
create_AllCardHolders(_teammap)
//set up turnstage
update_Turnstage(_teammap)
//reimburse points
GameEvent_Con_ReimbursePoints()
GameEvent_Con_CardDrawed()
//set the game to ready
global.IsGame=true
CameraFocus=socket_to_instanceid[? Turnstage[Turn]];
CameraFocusNo=Turn
//tell its player turn
if Turn<(array_length_1d(Turnstage)) && Turnstage[Turn]=mysocket{
    var _t=""
    if global.GameStage=GAMESTAGE.PLAYERTURNS{_t="Player"}
    if global.GameStage=GAMESTAGE.ATTACKINGTURN{_t="Attacking"}
    scr_CreateEndOfTurnAnnouncment("Your "+_t+" Turn",c_white,c_black,TeamColorOf(socket_to_instanceid[? mysocket].Team))
}

