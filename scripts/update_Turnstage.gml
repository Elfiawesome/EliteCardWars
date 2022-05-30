///update_Turnstage(TeamMap)
var TeamMap=argument0;
//reset turnstage
Turnstage=0
Turnstage[0]=0
//set up turnstage
var cntr=0
for (var k=ds_map_find_first(TeamMap);!is_undefined(k);k=ds_map_find_next(TeamMap, k)){
    var _v=TeamMap[? k];
    var _l=ds_list_create()
    ds_list_read(_l,_v)
    for(var i=0;i<ds_list_size(_l);i++){
        Turnstage[cntr]=real(_l[| i])
        cntr++
    }
    ds_list_destroy(_l)
}
