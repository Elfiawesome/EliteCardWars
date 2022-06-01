///ani_move_lerp(map)
var str=argument0;
var map=json_decode(str);
var Obj=map[? "Object"];
var targetx=map[? "x"];
var targety=map[? "y"];
var amt=map[? "Amt"];
var completed=false;

Obj.x=lerp(Obj.x,targetx,amt)
Obj.y=lerp(Obj.y,targety,amt)

//if close or already on the target, snap it to the target and move on
if abs(Obj.x-targetx)<1 && abs(Obj.y-targety)<1{
    completed=true
    Obj.x=targetx
    Obj.y=targety
}

//destroy map
ds_map_destroy(map)

return completed
