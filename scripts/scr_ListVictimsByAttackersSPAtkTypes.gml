///scr_ListVictimsByAttackersSPAtkTypes(victimobj,attackerobj)
var Atkr=argument1;
var Vict=argument0;
var battlefield=global.NetworkObj.socket_to_instanceid[? real(Vict.mysocket)].Cardholderlist;

var _l=ds_list_create()
if ds_list_empty(_l){if ds_list_find_index(_l,Vict)=-1{ds_list_add(_l,Vict)}}
if Atkr.Stats[? "SpreadAtk"]{
    for(var i=0;i<ds_list_size(battlefield);i++){
        if ds_list_find_index(_l,battlefield[| i])=-1{ds_list_add(_l,battlefield[| i])}
    }
}
if Atkr.Stats[? "Sweep_Atk"]{
    for(var i=0;i<3;i++){
        if ds_list_find_index(_l,battlefield[| i])=-1{ds_list_add(_l,battlefield[| i])}
    }
}
if Atkr.Stats[? "Pierce_Atk"]{
    if ds_list_find_index(_l,battlefield[| 4])=-1{ds_list_add(_l,battlefield[| 4])}
    if ds_list_find_index(_l,battlefield[| 2])=-1{ds_list_add(_l,battlefield[| 2])}
}


return _l

