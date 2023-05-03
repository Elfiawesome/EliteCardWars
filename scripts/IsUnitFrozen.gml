//IsUnitFrozen(cardholder object)
var _t=false

if argument0.Stats[? "IsFrozen"]{
    _t=true
}
if argument0.Stats[? "IsStatusEffectImmune"]{
    _t=false
}
return _t
