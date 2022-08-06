///scr_ability_D2_Psion()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
if vict.mysocket!=atkr.mysocket && stid[? vict.mysocket].Team!=stid[? atkr.mysocket].Team{
    with(vict){
        GameEvent_cardholders_Clear()
    }
}
ds_map_destroy(MapStr)
