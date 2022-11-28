///scr_spell_RedAlert3_DesolatorAirstrike_StartOfBattle()
var MapStr=argument0;
var _isCompleted=true
with(MapStr[? "TgtCon"]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            var mbdmg=Stats[? "Multi_PoisonDmg"];
            var mbdur=Stats[? "Multi_PoisonDuration"];
            mbdmg[? GetMultiStatsString_Spells(MapStr)]=10
            mbdur[? GetMultiStatsString_Spells(MapStr)]=2
            player_con_CardholdersUpdateMultiStats()
        }
    }
}
return _isCompleted=true
