///scr_heroability_CardWars_HackerPatrick_UnitSummoned(Summoned Object)
var MapStr=argument0
var _con=global.NetworkObj.socket_to_instanceid[? MapStr.mysocket]
var _mycon=global.NetworkObj.socket_to_instanceid[? mysocket]
var _id=HeroGetMultiStatsString(id)
if _con.Team != _mycon.Team{
    with(MapStr){
        var _ota=Stats[? "Multi_OtherAtkAmt"];
        var _otd=Stats[? "Multi_OtherAtkDuration"];
        _ota[? _id]=-floor(Stats[? "Finalized_Atk"]/5)
        _otd[? _id]=3
        
        var _ota=Stats[? "Multi_OtherHpAmt"];
        var _otd=Stats[? "Multi_OtherHpDuration"];
        _ota[? _id]=-floor(Stats[? "Finalized_Hp"]/5)
        _otd[? _id]=3
        
        player_con_CardholdersUpdateMultiStats()
    }
}
