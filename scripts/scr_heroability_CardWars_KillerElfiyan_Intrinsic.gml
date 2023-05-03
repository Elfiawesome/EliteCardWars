///scr_heroability_CardWars_KillerElfiyan_Intrinsic

if Stats[? "AbilityAlrdy"]=false{
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                Stats[? "Atk"]+=1
                Stats[? "Base_Atk"]+=1
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
}
Stats[? "AbilityAlrdy"]=true
}
