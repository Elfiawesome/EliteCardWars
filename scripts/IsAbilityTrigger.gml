///IsAbilityTrigger(CardID,AbilityTrigger)
var _r = -1
for(var i=0;i<array_length_2d(global.UnitDat_AbilityTrigger,argument0);i++){
    if global.UnitDat_AbilityTrigger[argument0,i]=argument1{
        _r=i
        break;
    }
}
return _r

