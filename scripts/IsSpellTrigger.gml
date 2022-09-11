///IsSpellTrigger(CardID,SpellTrigger)
var _r = -1
for(var i=0;i<array_length_2d(global.SpellDat_SpellTrigger,argument0);i++){
    if global.SpellDat_SpellTrigger[argument0,i]=argument1{
        _r=i
        break;
    }
}
return _r

