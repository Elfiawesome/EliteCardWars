///scr_spells_Checks_OnlyAllies(TargetUnit)
var TargetUnit=argument0
_r=false
var stid=global.NetworkObj.socket_to_instanceid
if TargetUnit.CardID!=0{
    if stid[? TargetUnit.mysocket].Team=stid[? global.NetworkObj.mysocket].Team{
        _r=true
    }
}
return _r
