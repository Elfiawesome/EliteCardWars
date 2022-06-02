///ani_depth(map)
var str=argument0;
var map=json_decode(str);
var Obj=map[? "Object"];
var targetShake=map[? "Amt"];
var completed=false;


Obj.ShakeAmt=targetShake
completed=true

//destroy map
ds_map_destroy(map)

return completed
