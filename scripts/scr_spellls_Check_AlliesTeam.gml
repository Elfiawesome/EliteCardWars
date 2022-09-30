///scr_spellls_Check_AlliesTeam()
var TargetSocket=argument0
_r=false
var stid=global.NetworkObj.socket_to_instanceid
if stid[? TargetSocket].Team=stid[? global.NetworkObj.mysocket].Team{
    _r=true
}

return _r
