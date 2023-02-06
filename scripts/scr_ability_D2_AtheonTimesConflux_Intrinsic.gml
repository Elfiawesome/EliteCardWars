///scr_ability_D2_AtheonTimesConflux_Intrinsic()
var MapStr=argument0;

if !ds_map_exists(Stats,"AtheonTargetedHandCardSock"){exit;}
if !ds_map_exists(Stats,"AtheonTargetedHandCardIdentifier"){exit;}
if Stats[? "Finalized_Hp"]<1{exit;}
var _tgtsock=Stats[? "AtheonTargetedHandCardSock"]
var _identifier=Stats[? "AtheonTargetedHandCardIdentifier"]

var _tgtcon=global.NetworkObj.socket_to_instanceid[? _tgtsock]
var _handcard=_tgtcon.HandCards

var _cardexists=false
for (var i=0;i<ds_list_size(_handcard);i++){
    var _m=json_decode(_handcard[| i]);
    if _m[? "Identifier"]=_identifier{
        if ds_map_exists(_m,"Locked"){
            _m[? "Locked"]=2
            var _mii=Stats[? "Multi_IsFrozen"];
            _mii[? GetMultiStatsString(id)]=2
            player_con_CardholdersUpdateMultiStats()
            _handcard[| i]=json_encode_destroy(_m)
            break;
        }
    }
    ds_map_destroy(_m)
}
