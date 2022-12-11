
if Stats[? "AbilityConstantTarget"]=noone{exit;}

var vict=GetMultiStatsObject(Stats[? "AbilityConstantTarget"])//global.NetworkObj.socket_to_instanceid[? mysocket].Cardholderlist[| 1]
var atkr=id

if atkr.Stats[? "Finalized_Hp"]>0 && vict.Stats[? "Finalized_Hp"]>0{
//Immunity of Atheon
//run animation of ability
var victimList=ds_list_create()
ds_list_add(victimList,vict)
ani_AttackSet_basic(atkr,victimList)
ds_list_destroy(victimList)
//Immune that card
with(vict){
    var _mii=Stats[? "Multi_IsImmune"];
    _mii[? GetMultiStatsString(atkr)]=2
    player_con_CardholdersUpdateMultiStats()
}
with(atkr){
    Stats[? "AbilityConstantTarget"]=GetMultiStatsString(vict)
}
//clear battlefield
if Stats[? "AbilityCooldown"]=0{
    for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
        var _sock=global.NetworkObj.socketlist[| i]
        var _team=global.NetworkObj.TeamMap
        var _stid=global.NetworkObj.socket_to_instanceid
        if _stid[? _sock].Team!=_stid[? mysocket].Team{
        var _atkr=id
        with(global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]){
            for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
                var _cardholder=Cardholderlist[| ii]
                if _cardholder.CardID!=0{
                with(_cardholder){
                    Stats[? "Finalized_Hp"]=0//for servitors
                    GameEvent_cardholders_AfterDamaged(id)
                    GameEvent_cardholders_Clear()
                }
                }
            }
        }
        }
    }
atkr.Stats[? "AbilityCooldown"]=atkr.Stats[? "AbilityCooldownMax"]+1
}

//Ability alrdy done
atkr.Stats[? "AbilityAlrdy"]=true
}
