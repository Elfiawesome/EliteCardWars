///scr_heroability_CardWars_KingElfiyan_UnitSummoned(Summoned Object)
var MapStr=argument0
var _con=global.NetworkObj.socket_to_instanceid[? MapStr.mysocket]
var _mycon=global.NetworkObj.socket_to_instanceid[? mysocket]
if _con.Team=_mycon.Team{
    with(MapStr){
        var _hpadd=floor(Stats[? "Base_Hp"]*0.1);
        var _atkadd=floor(Stats[? "Base_Atk"]*0.1);
        Stats[? "Hp"]+=_hpadd
        Stats[? "Atk"]+=_atkadd
        Stats[? "Base_Hp"]+=_hpadd
        Stats[? "Base_Atk"]+=_atkadd
        player_con_CardholdersUpdateMultiStats()
    }
}
