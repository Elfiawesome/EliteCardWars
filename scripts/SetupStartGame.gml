///SetupStartGame()
var _teammap=argument0
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
