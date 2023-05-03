///scr_heroability_CardWars_KillerElfiyan_Activate
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                Stats[? "AtkLeft"]++
            }
        }
    }
}
Stats[? "ActivateAbilityAlrdy"]=true
Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1

