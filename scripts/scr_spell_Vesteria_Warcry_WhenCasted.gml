///scr_spell_Vesteria_Warcry_WhenCasted()
var MapStr=argument0
with(global.NetworkObj.socket_to_instanceid[? mysocket]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                var mid=Stats[? "Multi_OtherAtkDuration"];
                var mia=Stats[? "Multi_OtherAtkAmt"];
                mid[? GetMultiStatsString_Spells(MapStr)]=2
                mia[? GetMultiStatsString_Spells(MapStr)]=5
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
}
