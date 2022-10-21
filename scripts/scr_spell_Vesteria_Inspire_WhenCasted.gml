///scr_spell_Vesteria_Inspire_WhenCasted()
var MapStr=argument0
with(global.NetworkObj.socket_to_instanceid[? mysocket]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                var mid=Stats[? "Multi_DefDuration"];
                var mii=Stats[? "Multi_DefAmt"];
                mid[? GetMultiStatsString_Spells(MapStr)]=2
                mii[? GetMultiStatsString_Spells(MapStr)]=5
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
}
