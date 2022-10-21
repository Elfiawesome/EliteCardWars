///GetIntakeMultiplier(atkr,vict [0 if no have])
if argument0!=0{
    var O=argument0.Stats[? "DamageOutputMultiplier"]
}else{
    O=1
}
if argument1!=0{
    var I=argument1.Stats[? "DamageIntakeMultiplier"]
}else{
    I=1
}
return (O*I)
