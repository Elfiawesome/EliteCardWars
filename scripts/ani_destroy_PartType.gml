///ani_destroy_PartType
var str=argument0;
var map=json_decode(str);
var Name=map[? "Name"];

if ds_map_exists(ParticleParts,Name){
    var part=ParticleParts[? Name]
    if part_type_exists(part){
        part_type_destroy(part)
    }
    ds_map_delete(ParticleParts,Name)
}

//destroy map
ds_map_destroy(map)
return true
