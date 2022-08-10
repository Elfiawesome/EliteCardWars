///GameEvent_Con_ReimbursePoints
socket_to_instanceid[? mysocket].Points=global.TurnPointArray[clamp(GameLifespan,0,array_length_1d(global.TurnPointArray)-1)]
