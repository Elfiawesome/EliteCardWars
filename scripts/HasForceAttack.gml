///HasForceAttack(cardholder)
var _cardholder=argument0
var _HasForce=false
var _hero=global.NetworkObj.socket_to_instanceid[? _cardholder.mysocket].Hero
if _hero.Stats[? "ForceAttackHolder"]!=-1{
    _HasForce=true
}
return _HasForce
