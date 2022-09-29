///scr_ability_SouthPark_EnforcerJimmy_Intrinsic()
var MapStr=argument0;

//resets cooldown of all enemy front row cards
if Stats[? "Finalized_Hp"]<1{exit;}
for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _sock=global.NetworkObj.socketlist[| i]
    var _team=global.NetworkObj.TeamMap
    var _stid=global.NetworkObj.socket_to_instanceid
    if _stid[? _sock].Team!=_stid[? mysocket].Team{
    with(global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            var _cardholder=Cardholderlist[| ii]
            if _cardholder.Pos!=3{
                with(_cardholder){
                    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1
                }
            }
        }
    }
    }
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
}
