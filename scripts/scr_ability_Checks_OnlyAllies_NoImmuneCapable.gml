///scr_ability_Checks_OnlyAllies_NoImmuneCapable(vict,atkr)
var vict=argument0
var atkr=argument1
var stid=global.NetworkObj.socket_to_instanceid
var _r=false

if global.GameStage=GAMESTAGE.PLAYERTURNS && vict.CardID!=0 && stid[? vict.mysocket].Team=stid[? atkr.mysocket].Team && atkr!=vict && global.UnitDat_ImmuneCapable[vict.CardID]!=true{
    _r=true
}
return _r
