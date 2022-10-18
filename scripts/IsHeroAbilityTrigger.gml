///IsHeroAbilityTrigger(CardID,AbilityTrigger)
var _r = -1
for(var i=0;i<array_length_2d(global.HeroDat_AbilityTrigger,argument0);i++){
    if global.HeroDat_AbilityTrigger[argument0,i]=argument1{
        _r=i
        break;
    }
}
return _r

