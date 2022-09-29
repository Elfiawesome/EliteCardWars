///scr_ability_D2_Servitor_Intrinsic()
var MapStr=argument0;


if Stats[? "AbilityConstantTarget"]!=noone{//if it exists
    if Stats[? "AbilityConstantTarget"].CardID=0{
        Stats[? "AbilityConstantTarget"]=noone
        exit;
    }
    if Stats[? "Finalized_Hp"]>0{
        with(Stats[? "AbilityConstantTarget"]){
            var _mii=Stats[? "Multi_IsImmune"];
            _mii[? GetMultiStatsString(other.id)]=2
        }
        Stats[? "AbilityAlrdy"]=true
    }
}

