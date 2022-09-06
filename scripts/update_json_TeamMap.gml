///update_json_TeamMap()
ds_map_clear(TeamMap)
for(i=0;i<ds_list_size(socketlist);i++){
    var _o=socket_to_instanceid[? socketlist[| i]]
    if _o.IsSpectating=true{continue;}
    if ds_map_exists(TeamMap,_o.Team){
        var _l=ds_list_create()
        ds_list_read(_l,TeamMap[? _o.Team])
        ds_list_add(_l,socketlist[| i])
        TeamMap[? _o.Team]=ds_list_write(_l)
        ds_list_destroy(_l)
    }else{
        var _l=ds_list_create()
        ds_list_add(_l,socketlist[| i])
        TeamMap[? _o.Team]=ds_list_write(_l)
        ds_list_destroy(_l)
    }
}
