///MultiStats_GetSum(AmtMap,DurationMap)
var msa=argument0
var msd=argument1
var _sum=0

if !ds_map_empty(msa){
    for(var k=ds_map_find_first(msd);!is_undefined(k);k=ds_map_find_next(msd,k)){
        _sum+=msa[? k]
    }
}
return _sum



