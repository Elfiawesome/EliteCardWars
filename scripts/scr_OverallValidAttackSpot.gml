///scr_OverallValidAttackSpot(victim,attacker)
var _r=false

if (!HasForceAttack(argument0) && scr_ValidAttackSpot(argument1,argument0)) || (HasForceAttack(argument0) && IsForceAttackHolder(argument0)){
    _r=true
}

return _r
