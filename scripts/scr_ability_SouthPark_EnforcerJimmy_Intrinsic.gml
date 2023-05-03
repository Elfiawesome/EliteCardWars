///scr_ability_SouthPark_EnforcerJimmy_Intrinsic()
var MapStr=argument0;

//resets cooldown of all enemy front row cards
if Stats[? "Finalized_Hp"]<1{exit;}
for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _sock=global.NetworkObj.socketlist[| i]
    var _stid=global.NetworkObj.socket_to_instanceid
    if _stid[? _sock].Team!=_stid[? mysocket].Team{
    with(global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            var _cardholder=Cardholderlist[| ii]
            if !_cardholder.Stats[? "IsAbilityImmune"] && !IsBackUnit(_cardholder.Pos,Cardholderlist){
                with(_cardholder){
                    //Cooldwon reset
                    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1
                    //remove SP ATKS
                    var _ms=Stats[? "Multi_CrossAtk"];ds_map_clear(_ms)
                    var _ms=Stats[? "Multi_SpreadAtk"];ds_map_clear(_ms)
                    var _ms=Stats[? "Multi_Sweep_Atk"];ds_map_clear(_ms)
                    var _ms=Stats[? "Multi_Pierce_Atk"];ds_map_clear(_ms)
                    var _ms=Stats[? "Multi_Splash_Atk"];ds_map_clear(_ms)
                    //remove SP Immunities
                    var _mii=Stats[? "Multi_IsSPImmune"];ds_map_clear(_mii)
                    player_con_CardholdersUpdateMultiStats()
                }
            }
        }
    }
    }
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
}
