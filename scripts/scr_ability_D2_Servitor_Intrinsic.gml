///scr_ability_D2_Servitor_Intrinsic()
var MapStr=argument0;


if GetMultiStatsObject(Stats[? "AbilityConstantTarget"])!=noone{//if it exists
    var _o=GetMultiStatsObject(Stats[? "AbilityConstantTarget"])
    if _o.CardID=0 || _o.Stats[? "Finalized_Hp"]<1{
        _o=""
        exit;
    }
    if Stats[? "Finalized_Hp"]>0{
        with(_o){
            var _mii=Stats[? "Multi_IsImmune"];
            _mii[? GetMultiStatsString(other.id)]=2
        }
        Stats[? "AbilityAlrdy"]=true
    }
}

