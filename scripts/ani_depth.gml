///ani_depth(map)
var str=argument0;
var map=json_decode(str);
var Obj=map[? "Object"];
var targetdepth=map[? "depth"];
var completed=false;

Obj.depth=targetdepth
completed=true

//destroy map
ds_map_destroy(map)

return completed
