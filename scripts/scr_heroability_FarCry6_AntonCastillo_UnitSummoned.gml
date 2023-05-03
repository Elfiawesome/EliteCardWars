///scr_heroability_FarCry6_AntonCastillo_AllySummoned(Summoned Object)
var MapStr=argument0
var _con=global.NetworkObj.socket_to_instanceid[? MapStr.mysocket]
var _mycon=global.NetworkObj.socket_to_instanceid[? mysocket]
if _con.Team=_mycon.Team{
    with(MapStr){
        Stats[? "Hp"]+=2
        Stats[? "Atk"]+=2
        Stats[? "Base_Hp"]+=2
        Stats[? "Base_Atk"]+=2
        player_con_CardholdersUpdateMultiStats()
    }
}
