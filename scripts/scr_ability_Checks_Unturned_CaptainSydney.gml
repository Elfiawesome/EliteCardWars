///scr_ability_Checks_Unturned_CaptainSydney(vict,atkr)
var vict=argument0
var atkr=argument1
var stid=global.NetworkObj.socket_to_instanceid
var _r=false
if stid[? atkr.mysocket].Points>=20 && ds_list_size(stid[? atkr.mysocket].cardList)<(10+stid[? atkr.mysocket].Hero.Stats[? "ExtraHandCards"]){
if global.GameStage=GAMESTAGE.PLAYERTURNS && vict.CardID!=0 && stid[? vict.mysocket].Team=stid[? atkr.mysocket].Team && atkr!=vict{
    _r=true
}
}
return _r
