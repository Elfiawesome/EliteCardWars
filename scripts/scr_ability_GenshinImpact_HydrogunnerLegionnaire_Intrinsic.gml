///scr_ability_GenshinImpact_HydrogunnerLegionnaire_Intrinsic()
if Stats[? "Lifespan"]>0{//Heals [ONLY IF END OF TURN]
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist)i++){
        with(Cardholderlist[| i]){
            GameEvent_cardholders_heal(5)
        }
    }
}
Stats[? "AbilityAlrdy"]=true
}
