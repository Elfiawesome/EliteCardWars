///scr_spell_RedAlert3_Cryogeddon_StartOfBattle()
var MapStr=argument0;
var _isCompleted=true
with(MapStr[? "TgtCon"]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0 && !Stats[? "IsSpellsImmune"]{
                if Stats[? "Finalized_Hp"]<25{
                    var _mii=Stats[? "Multi_IsFrozen"];
                    _mii[? GetMultiStatsString_Spells(MapStr)]=2
                    player_con_CardholdersUpdateMultiStats()
                }
            }
        }
    }
}
return _isCompleted
