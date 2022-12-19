///FindDamageState(atkr,vict)
var _v=0
var Vict=argument1
var Atkr=argument0

if Vict.Stats[? "IsImmune"]!=0{_v=1}
if Vict.Stats[? "IsSPImmune"]!=0 && IsSPAtk(Atkr.Stats)=true{_v=2}
if Vict.Stats[? "IsBAImmune"]!=0 && IsSPAtk(Atkr.Stats)=false{_v=3}

return _v
