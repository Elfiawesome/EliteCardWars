///scr_spell_RedAlert3_DesolatorAirstrike_StartOfBattle()
var MapStr=argument0;
var _isCompleted=true
with(MapStr[? "TgtCon"]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            var mbdmg=Stats[? "Multi_BurnDmg"];
            var mbdur=Stats[? "Multi_BurnDuration"];
            mbdmg[? GetMultiStatsString_Spells(MapStr)]=10
            mbdur[? GetMultiStatsString_Spells(MapStr)]=2
            player_con_CardholdersUpdateMultiStats()
        }
    }
}
return _isCompleted=true
