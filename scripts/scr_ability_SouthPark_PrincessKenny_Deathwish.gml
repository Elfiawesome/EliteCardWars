///scr_ability_SouthPark_PrincessKenny_Deathwish()
var MapStr=argument0;

var _id=GetMultiStatsString(id)
if Stats[? "LastAttackedBy"]!=noone{
with(Stats[? "LastAttackedBy"]){
    if CardID!=0{
    var _ota=Stats[? "Multi_OtherAtkAmt"];
    var _otd=Stats[? "Multi_OtherAtkDuration"];
    _ota[? _id]=-Stats[? "Finalized_Atk"]
    _otd[? _id]=4
    player_con_CardholdersUpdateMultiStats()
    }
}
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
