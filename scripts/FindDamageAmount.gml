///FindDamageAmount(Value,Atkr,Victim)
var Vict=argument2
var Atkr=argument1

var _Immune=FindDamageState(Atkr,Vict)

switch(_Immune){
    case 0:
        return (argument0*GetIntakeMultiplier(argument1,argument2)-argument2.Stats[? "Def"])
    break;
    case 1:
        return 0
    break;
    case 2:
        return 0
    break;
    case 3:
        return 0
    break;
}

