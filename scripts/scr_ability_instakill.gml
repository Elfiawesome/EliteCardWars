///scr_ability_D2_Hobgoblin()
var MapStr=argument0;
if Stats[? "LastAttackedBy"]!=noone{
    with(Stats[? "LastAttackedBy"]){
        Stats[? "Hp"]=-1
    }
}
