///scr_ability_Checks_RedAlert3_FutureTankX1(vict,atkr)
var vict=argument0
var atkr=argument1
var stid=global.NetworkObj.socket_to_instanceid
var _r=false
if atkr.Stats[? "AbilityCooldown"]=0 && atkr.Stats[? "AtkLeft"]>0{
if global.GameStage=GAMESTAGE.ATTACKINGTURN{
if vict.CardID!=0 && vict.mysocket!=atkr.mysocket && stid[? vict.mysocket].Team!=stid[? atkr.mysocket].Team{
    if IsMiddleUnit(vict.Pos,stid[? vict.mysocket].Cardholderlist) || IsBackUnit(vict.Pos,stid[? vict.mysocket].Cardholderlist){
        _r=true
    }
}
}
}
return _r
