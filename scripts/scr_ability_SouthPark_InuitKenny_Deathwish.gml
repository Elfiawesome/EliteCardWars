///scr_ability_SouthPark_InuitKenny_Deathwish()
var MapStr=argument0;

if Stats[? "LastAttackedBy"]!=noone{
    with(Stats[? "LastAttackedBy"]){
        Stats[? "Hp"]=-1
    }
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
}
