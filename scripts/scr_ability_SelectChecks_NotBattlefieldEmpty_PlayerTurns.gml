///scr_ability_SelectChecks_NotBattlefieldEmpty_PlayerTurns()
var _c=argument0
var _r=false

if global.GameStage=GAMESTAGE.PLAYERTURNS{
    var _cardholders=global.NetworkObj.socket_to_instanceid[? _c.mysocket].Cardholderlist
    for(var i=0;i<ds_list_size(_cardholders);i++){
        if _cardholders[| i].CardID!=0{
            _r=true
            break;
        }
    }
}

return _r
