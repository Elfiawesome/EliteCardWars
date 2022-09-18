///scr_ability_Checks_RedAlert3_Spy(vict,atkr)
var vict=argument0
var atkr=argument1
var stid=global.NetworkObj.socket_to_instanceid
var _r=false
if global.GameStage=GAMESTAGE.PLAYERTURNS{
if vict.CardID!=0 && vict.mysocket!=atkr.mysocket && stid[? vict.mysocket].Team!=stid[? atkr.mysocket].Team{
    if stid[? atkr.mysocket].Points>=15{
        _r=true
    }
}
}

return _r
