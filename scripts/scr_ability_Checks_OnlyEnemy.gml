///scr_ability_Checks_OnlyEnemy(vict,atkr)
var vict=argument0
var atkr=argument1
var stid=global.NetworkObj.socket_to_instanceid
var _r=false
if atkr.Stats[? "AbilityCooldown"]=0{
if global.GameStage=GAMESTAGE.PLAYERTURNS && vict.CardID!=0 && vict.mysocket!=atkr.mysocket && stid[? vict.mysocket].Team!=stid[? atkr.mysocket].Team{
    _r=true
}
}
return _r
