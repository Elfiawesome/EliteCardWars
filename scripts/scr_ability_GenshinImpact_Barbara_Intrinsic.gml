///scr_ability_GenshinImpact_Barbara_Intrinsic()

var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
var _Hp=Stats[? "Finalized_Hp"]
var _amt=ceil(_Hp/5)
if _amt>0{
    with(_con){
        for(var i=0;i<ds_list_size(Cardholderlist);i++){
            with(Cardholderlist[| i]){
                GameEvent_cardholders_heal(_amt)
            }
        }
    }
Stats[? "AbilityAlrdy"]=true
}
