///GameLoseState_Raid_VaultOfGlass_Hero()
var _HL=false
var _con=argument0


for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _MainCon=global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]
    if _MainCon.IsRaidBoss && _MainCon.RaidBotIdentifier=2{
        _HL=true
        for(var ii=0;ii<ds_list_size(_MainCon.Cardholderlist);ii++){
            _ch=_MainCon.Cardholderlist[| ii]
            if _ch.CardID=UnitID.Raid_VaultOfGlass_AtheonTimesConflux{
                _HL=false
            }
        }
    }
}
return _HL
