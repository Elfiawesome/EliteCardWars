///update_Turnstage(TeamMap)
var TeamMap=argument0;
//reset turnstage
Turnstage=0
Turnstage[0]=0
//set up turnstage
/*var cntr=0
for (var k=ds_map_find_first(TeamMap);!is_undefined(k);k=ds_map_find_next(TeamMap, k)){
    var _v=TeamMap[? k];
    var _l=ds_list_create()
    ds_list_read(_l,_v)
    for(var i=0;i<ds_list_size(_l);i++){
        Turnstage[cntr]=real(_l[| i])
        cntr++
    }
    ds_list_destroy(_l)
}*/
var _TeamOrderList=ds_list_create()
for (var k=ds_map_find_first(TeamMap);!is_undefined(k);k=ds_map_find_next(TeamMap,k)){
    ds_list_add(_TeamOrderList,real(k))
}
ds_list_sort(_TeamOrderList,true)

var cntr=0
for(var i=0;i<ds_list_size(_TeamOrderList);i++){
    var _l=ds_list_create()
    var _str=undefined
    if _str=undefined{
        _str=TeamMap[? string(_TeamOrderList[| i])]
    }
    if _str=undefined{
        _str=TeamMap[? real(_TeamOrderList[| i])]
    }
    
    ds_list_read(_l,_str)
    for(var ii=0;ii<ds_list_size(_l);ii++){
        Turnstage[cntr]=real(_l[| ii])
        cntr++
    }
    ds_list_destroy(_l)
}
ds_list_destroy(_TeamOrderList)
