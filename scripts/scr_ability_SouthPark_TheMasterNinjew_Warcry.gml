///scr_ability_SouthPark_TheMasterNinjew_Warcry()
var MapStr=argument0;
var _mycon=global.NetworkObj.socket_to_instanceid[? mysocket]

for(var ii=0;ii<ds_list_size(global.NetworkObj.socketlist);ii++){
    var _con=global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| ii]]
    if _con.Team=_mycon.Team{
        for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
            with(_con.Cardholderlist[| i]){
                Stats[? "Atk"]+=10
                Stats[? "Base_Atk"]+=10
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
