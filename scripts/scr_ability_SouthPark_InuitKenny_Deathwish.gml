///scr_ability_SouthPark_InuitKenny_Deathwish()
var MapStr=argument0;
var _atkr=GetMultiStatsObject(Stats[? "LastAttackedBy"])
if _atkr!=noone{
    with(_atkr){
        Stats[? "Hp"]=-1
        player_con_CardholdersUpdateMultiStats()
    }
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
}
