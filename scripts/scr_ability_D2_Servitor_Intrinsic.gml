///scr_ability_D2_Servitor_Intrinsic()
var MapStr=argument0;


if Stats[? "AbilityConstantTarget"]!=noone{
    if Stats[? "AbilityConstantTarget"].CardID=0{
        Stats[? "AbilityConstantTarget"]=noone
        exit;
    }
    if Stats[? "Hp"]>0{
        with(Stats[? "AbilityConstantTarget"]){
            Stats[? "IsImmune"]=clamp(Stats[? "IsImmune"]+1,1,2)
        }
        Stats[? "AbilityAlrdy"]=true
    }
}

