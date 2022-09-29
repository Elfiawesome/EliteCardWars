///IsForceAttackHolder(cardholder)
var _cardholder=argument0
var _IsForceCan=false
var _hero=global.NetworkObj.socket_to_instanceid[? _cardholder.mysocket].Hero
if _hero.Stats[? "ForceAttackHolder"]=-1{
    _IsForceCan=true
}else if _cardholder.Pos=_hero.Stats[? "ForceAttackHolder"]{
    _IsForceCan=true
}

return _IsForceCan
