///scr_ValidAttackSpot(attacker obj,victim obj)
var objAttacker=argument0
var objVictim=argument1
var valid=true

if objVictim.Pos=3 && scr_ConBattlefieldSize(global.NetworkObj.socket_to_instanceid[? objVictim.mysocket])>1{
    valid=false
    if objAttacker.Stats[? "Sp_Atk"] || 
    objAttacker.Stats[? "CrossAtk"] || 
    objAttacker.Stats[? "SpreadAtk"] || 
    //objAttacker.Stats[? "Sweep_Atk"] || 
    objAttacker.Stats[? "Pierce_Atk"] //if attacker is an SP attack
    {
        valid=true
    }
}



return valid
