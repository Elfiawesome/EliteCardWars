///ani_rotate_lerp(map)
var str=argument0;
var map=json_decode(str);
var Obj=map[? "Object"];
var targetrot=map[? "rot"];
var amt=map[? "Amt"];
var completed=false;

Obj.image_angle=lerp(Obj.image_angle,targetrot,amt)

//if close or already to rotation, snap it to the rotation and move on
if abs(Obj.image_angle-targetrot)<1{
    completed=true
    Obj.image_angle=targetrot
}

//destroy map
ds_map_destroy(map)

return completed
