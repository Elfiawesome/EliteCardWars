///scr_heroability_Raid_VaultOfGlass_Hero_Intrinsic()
if !Stats[? "AbilityAlrdy"]{
    var _Maincon=global.NetworkObj.socket_to_instanceid[? mysocket]
    var _ri=_Maincon.RaidBotIdentifier;
    if _ri=2{
        //cooldown till oracle respawn
        if Stats[? "AIOracleRespawnCooldown"]>0{
            Stats[? "AIOracleRespawnCooldown"]-=1
        }
        if Stats[? "AIOracleRespawnCooldown"]=0{
            Stats[? "AIOracleRespawnCooldown"]=1
            //count the oracles
            var _oraclecount=0
            with(global.NetworkObj){
            for(var i=0;i<ds_list_size(socketlist);i++){
                if socket_to_instanceid[? socketlist[| i]].IsRaidBoss{
                    //count oracles
                    with(socket_to_instanceid[? socketlist[| i]]){
                    for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
                        if Cardholderlist[| ii].CardID=UnitID.Raid_VaultOfGlass_Oracle{
                            _oraclecount++
                        }
                    }
                    }
                }
            }
            }
            //respawn oracles if needed
            if _oraclecount>0{exit;}
            //My battlefeild [ie atheon's]
            with(_Maincon){
                for(var i=0;i<ds_list_size(Cardholderlist);i++){
                    var _ch=Cardholderlist[| i]
                    if _ch.CardID=0{
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
        Stats[? "AbilityAlrdy"]=true
    }
}


