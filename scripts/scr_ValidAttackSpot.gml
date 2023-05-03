///scr_ValidAttackSpot(attacker obj,victim obj)
var objAttacker=argument0
var objVictim=argument1
var valid=true

var _vchl=global.NetworkObj.socket_to_instanceid[? objVictim.mysocket].Cardholderlist
if IsBackUnit(objVictim.Pos,_vchl) && scr_ConBattlefieldSize(global.NetworkObj.socket_to_instanceid[? objVictim.mysocket])>1{
    valid=false
    if objAttacker.Stats[? "Sp_Atk"] || 
    objAttacker.Stats[? "CrossAtk"] || 
    objAttacker.Stats[? "SpreadAtk"] || 
    //objAttacker.Stats[? "Sweep_Atk"] //Sweep & Splash cannot attack back
    objAttacker.Stats[? "Pierce_Atk"] //if attacker is an SP attack
    {
        valid=true
    }
}



return valid
