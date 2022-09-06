///GameEvent_Con_ReimbursePoints

var newAmt=global.TurnPointArray[clamp(GameLifespan,0,array_length_1d(global.TurnPointArray)-1)]
with(socket_to_instanceid[? mysocket].Hero){
    Stats[? "TotaledReimbursedPoints"]=newAmt-other.socket_to_instanceid[? other.mysocket].Points
}
socket_to_instanceid[? mysocket].Points=newAmt
