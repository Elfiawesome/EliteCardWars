///scr_heroability_CardWars_KingElfiyan_Intrinsic
if Stats[? "AbilityAlrdy"]=false{
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                GameEvent_cardholders_heal(5)
            }
        }
    }
}
Stats[? "AbilityAlrdy"]=true
}

