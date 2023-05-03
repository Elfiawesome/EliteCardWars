///scr_ability_D2_AtheonTimesConflux_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
if !vict.Stats[? "IsAbilityImmune"] && vict.Stats[? "IsCheezable"]{
    //run animation of ability
    var victimList=ds_list_create()
    ds_list_add(victimList,vict)
    ani_GoToEnemyAndAttackSet_basic(atkr,victimList)
    ds_list_destroy(victimList)
    
    //refund the card if you are the victim
    var _m=ds_map_create();
    _m[? "socket"]=vict.mysocket;
    _m[? "ID"]=vict.CardID
    _m[? "Type"]=0
    _m[? "Locked"]=1
    var _str=json_encode_destroy(_m);
    GameEvent_refundCard(vict.mysocket, vict.CardID, _str)
    
    if ds_map_exists(Stats,"AtheonTargetedHandCardSock"){
    if ds_map_exists(Stats,"AtheonTargetedHandCardIdentifier"){
        var _tgtsock=Stats[? "AtheonTargetedHandCardSock"]
        var _identifier=Stats[? "AtheonTargetedHandCardIdentifier"]
        var _tgtcon=global.NetworkObj.socket_to_instanceid[? _tgtsock]
        var _handcard=_tgtcon.HandCards
        for (var i=0;i<ds_list_size(_handcard);i++){
            var _m=json_decode(_handcard[| i]);
            if _m[? "Identifier"]=_identifier{
                _m[? "Locked"]=0
                _handcard[| i]=json_encode_destroy(_m)
                break;
            }
            ds_map_destroy(_m)
        }
    }
    }
    
    var _mii=Stats[? "Multi_IsFrozen"];
    _mii[? GetMultiStatsString(id)]=1
    player_con_CardholdersUpdateMultiStats()
    Stats[? "AtheonTargetedHandCardSock"]=vict.mysocket
    Stats[? "AtheonTargetedHandCardIdentifier"]=global.CardsIdentifier-1
    
    CheckingLocalCards()
    //clear that card
    with(vict){
        Stats[? "Finalized_Hp"]=0//for servitors
        GameEvent_cardholders_AfterDamaged(id)
        GameEvent_cardholders_Clear()
    }
    //Ability alrdy done
    atkr.Stats[? "AbilityAlrdy"]=true
    
    //remove from selected
    if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"])!=-1{
        ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,MapStr[? "Attacker"]))
    }
    MapStr[? "Attacker"].IsSelected_Ability=false
}
ds_map_destroy(MapStr)
