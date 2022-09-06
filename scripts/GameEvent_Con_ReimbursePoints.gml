///GameEvent_Con_ReimbursePoints
for(var i=0;i<ds_list_size(socketlist);i++){
    var _con=socket_to_instanceid[? socketlist[| i]]
    with(_con){
        if !IsSpectating{
        var newAmt=global.TurnPointArray[
                clamp(other.GameLifespan,0,array_length_1d(global.TurnPointArray)-1)
            ]
        var Inc=newAmt-Points
        Points=newAmt
        with(Hero){
            Stats[? "TotaledReimbursedPoints"]=Inc
        }
        }
    }
}
