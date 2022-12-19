///ani_depth(map)
var str=argument0;
var map=json_decode(str);
var Obj=map[? "Object"];
var dmgamt=map[? "DamageNumber"];
var completed=false;

var _dm=instance_create(Obj.x,Obj.y,obj_damagenumbers);
_dm.DamageText=dmgamt

completed=true

//destroy map
ds_map_destroy(map)

return completed
