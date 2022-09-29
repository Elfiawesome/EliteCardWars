///scr_ability_SouthPark_RogueToken_Warcry()
var MapStr=argument0;

//with everyone
var victimList=ds_list_create()
for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _sock=global.NetworkObj.socketlist[| i]
    var _team=global.NetworkObj.TeamMap
    var _stid=global.NetworkObj.socket_to_instanceid
    if _stid[? _sock].Team!=_stid[? mysocket].Team{
    var _atkr=id
    with(global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            var _cardholder=Cardholderlist[| ii]
            if _cardholder.CardID!=0 && _cardholder.Pos!=3{
            with(_cardholder){
                GameEvent_cardholders_DealDamageAmt(id,_atkr,8)
                GameEvent_cardholders_Damaged(_atkr)
            }
            ds_list_add(victimList,_cardholder)
            }
        }
    }
    }
}
//run animation of ability
if !ds_list_empty(victimList){ani_AttackSet_basic(id,victimList)}
ds_list_destroy(victimList)
