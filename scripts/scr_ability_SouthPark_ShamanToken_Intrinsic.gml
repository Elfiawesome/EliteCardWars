///scr_ability_SouthPark_ShamanToken_Intrinsic()
var MapStr=argument0;

if Stats[? "AbilityCooldown"]=0{
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
    //With All my allies
    var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
    for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
        var _cardholder=_con.Cardholderlist[| i]
        with(_cardholder){
            GameEvent_cardholders_ClearDebuff()
        }
    }
    //reset cooldown
    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1
}
