///UpdateTeams(TeamMap String)
var _str=argument0;
var _map=json_decode(_str)

ds_map_clear(TeamMap)

for(var k=ds_map_find_first(_map);!is_undefined(k);k=ds_map_find_next(_map,k)){
    var _l=ds_list_create()
    ds_list_read(_l,_map[? k])
    for(var ii=0;ii<ds_list_size(_l);ii++){
        socket_to_instanceid[? _l[| ii]].Team=real(k)
    }
    ds_list_destroy(_l)
}

update_json_TeamMap()
ds_map_destroy(_map)
