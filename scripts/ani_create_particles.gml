///ani_create_particles()
var str=argument0;
var map=json_decode(str);
var Name=map[? "Name"];
var _x=map[? "x"];
var _y=map[? "y"];
var Time=map[? "Time"];
var Amt=map[? "Amt"]
var completed=false

if Timer>Time{
    Timer=0
    completed=true
}else{
    if ds_map_exists(ParticleParts,Name){
        var _p=ParticleParts[? Name]
        if part_type_exists(_p){
            part_particles_create(ParticleSys,_x,_y,_p,Amt)
        }
    }
    Timer++
}

//destroy map
ds_map_destroy(map)
return completed
