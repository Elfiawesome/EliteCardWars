///GameEvent_cardholders_Damaged(Obj)
Stats[? "LastAttackedBy"]=GetMultiStatsString(argument0)
//Reduce dodge
var _n = Stats[? "Multi_DodgeAmt"]
var _m = Stats[? "Multi_DodgeDur"]
if !ds_map_empty(_n){
    var _k = ds_map_find_first(_n);
    _n[? _k] -= 1
    player_con_CardholdersUpdateMultiStats()
}

