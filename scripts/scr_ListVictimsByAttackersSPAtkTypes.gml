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
    if !IsBackUnit(Vict.Pos,battlefield){
        for(var i=0;i<(ds_list_size(battlefield)-1);i++){
            if ds_list_find_index(_l,battlefield[| i])=-1{ds_list_add(_l,battlefield[| i])}
        }
    }
}
if Atkr.Stats[? "Pierce_Atk"]{
    if IsBackUnit(Vict.Pos,battlefield) || IsMiddleUnit(Vict.Pos,battlefield){
        for(var i=0;i<(ds_list_size(battlefield));i++){
            if IsBackUnit(i,battlefield) || IsMiddleUnit(i,battlefield){
                if ds_list_find_index(_l,battlefield[| i])=-1{ds_list_add(_l,battlefield[| i])}
            }
        }
    }
}


return _l

