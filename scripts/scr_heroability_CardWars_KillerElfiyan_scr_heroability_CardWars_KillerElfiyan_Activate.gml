///scr_heroability_CardWars_KillerElfiyan_scr_heroability_CardWars_KillerElfiyan_Activate
if Stats[? "AbilityAlrdy"]=false{
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                Stats[? "AtkLeft"]++
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
}
Stats[? "AbilityAlrdy"]=true
}
