///scr_ability_SouthPark_DarkMageCraig_Warcry()
var MapStr=argument0;
var _id=GetMultiStatsString(id)
//with everyone
for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _sock=global.NetworkObj.socketlist[| i]
    var _team=global.NetworkObj.TeamMap
    var _stid=global.NetworkObj.socket_to_instanceid
    if _stid[? _sock].Team!=_stid[? mysocket].Team{
    with(global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            var _cardholder=Cardholderlist[| ii]
            with(_cardholder){
                var _ota=Stats[? "Multi_OtherAtkAmt"];
                var _otd=Stats[? "Multi_OtherAtkDuration"];
                _ota[? _id]=-floor(Stats[? "Finalized_Atk"]/2)
                _otd[? _id]=2
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
    }
}
