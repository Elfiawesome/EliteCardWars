///scr_heroability_Raid_VaultOfGlass_Hero_Warcry()
var _Maincon=global.NetworkObj.socket_to_instanceid[? mysocket]
var _ri=_Maincon.RaidBotIdentifier;
if _ri=2{
        //Spawn Raid Boss
        //My battlefeild [ie atheon's]
        with(_Maincon){
            for(var i=0;i<ds_list_size(Cardholderlist);i++){
                var _ch=Cardholderlist[| i]
                if _ch.CardID=0{
                    if i=1{
                        SummonCard(_ch,UnitID.Raid_VaultOfGlass_AtheonTimesConflux)
                    }
                    if i=0 || i=2{
                        SummonCard(_ch,UnitID.Raid_VaultOfGlass_Oracle)
                        _ch.Stats[? "AbilityConstantTarget"]=GetMultiStatsString(Cardholderlist[| 1])
                        with(_ch){Activate_Intrinsic_Ability()}
                    }
                }
            }
        }
        //other's battlefeild
        for(var ii=0;ii<ds_list_size(global.NetworkObj.socketlist);ii++){
        var _con=global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| ii]]
        if _con.IsRaidBoss && !_con.IsSpectating{
        with(_con){
            for(var i=0;i<ds_list_size(Cardholderlist);i++){
                var _ch=Cardholderlist[| i]
                if _ch.CardID=0{
                switch(_con.RaidBotIdentifier){
                    case 3:
                    if i=2 || i=3{
                        SummonCard(_ch,UnitID.Raid_VaultOfGlass_Oracle)
                    }
                    break;
                    case 1:
                    if i=0 || i=3{
                        SummonCard(_ch,UnitID.Raid_VaultOfGlass_Oracle)
                    }
                    break;
                }
                
                _ch.Stats[? "AbilityConstantTarget"]=GetMultiStatsString(_Maincon.Cardholderlist[| 1])
                with(_ch){Activate_Intrinsic_Ability()}
                }
            }
        }
        }
        }
}


/*var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
var _Maincon=global.NetworkObj.socket_to_instanceid[? mysocket]
var _ri=_con.RaidBotIdentifier;

//find hero
with(global.NetworkObj){
for(var i=0;i<ds_list_size(socketlist);i++){
    if socket_to_instanceid[? socketlist[| i]].RaidBotIdentifier=2{
        _Maincon=socket_to_instanceid[? socketlist[| i]]
        break;
    }
}
}
//atheon battlefeild
if _ri=2{
    with(_con){
        for(var i=0;i<ds_list_size(Cardholderlist);i++){
            var _ch=Cardholderlist[| i]
            if _ch.CardID=0{
                if i=1{
                    SummonCard(_ch,UnitID.Raid_VaultOfGlass_AtheonTimesConflux)
                }
                if i=0 || i=2{
                    SummonCard(_ch,UnitID.Raid_VaultOfGlass_Oracle)
                    _ch.Stats[? "AbilityConstantTarget"]=GetMultiStatsString(_Maincon.Cardholderlist[| 1])
                    with(_ch){Activate_Intrinsic_Ability()}
                }
            }
        }
    }
}
//other's battlefeild
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        var _ch=Cardholderlist[| i]
        if _ch.CardID=0{
        switch(_ri){
            case 3:
            if i=2 || i=3{
                SummonCard(_ch,UnitID.Raid_VaultOfGlass_Oracle)
            }
            break;
            case 1:
            if i=0 || i=3{
                SummonCard(_ch,UnitID.Raid_VaultOfGlass_Oracle)
            }
            break;
        }
        
        _ch.Stats[? "AbilityConstantTarget"]=GetMultiStatsString(_Maincon.Cardholderlist[| 1])
        with(_ch){Activate_Intrinsic_Ability()}
        }
    }
}



