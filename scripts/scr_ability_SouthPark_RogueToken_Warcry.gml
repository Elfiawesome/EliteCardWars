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
            if _cardholder.CardID!=0 && !IsBackUnit(_cardholder.Pos,Cardholderlist){
            with(_cardholder){
                var _dmg=8
                if Stats[? "IsAbilityImmune"]{_dmg=0}
                GameEvent_cardholders_DealDamageAmt(id,_atkr,_dmg)
                GameEvent_cardholders_Damaged(_atkr)
                GameEvent_cardholders_AfterDamaged(id)
                //damage numbers
                var _m=ds_map_create();
                _m[? "Object"]=id
                _m[? "DamageNumber"]=FindDamageAmount(_dmg,_atkr,id)
                ds_list_add(victimList,_m)
                ds_list_mark_as_map(victimList,ds_list_size(victimList)-1)
            }
            }
        }
    }
    }
}
//run animation of ability

if !ds_list_empty(victimList){
    ani_AttackSet_basic(id,victimList)
}


ds_list_destroy(victimList)
