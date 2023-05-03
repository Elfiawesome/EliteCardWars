///ani_create_PartType
var str=argument0;
var map=json_decode(str);
var Name=map[? "Name"];
var Setup=map[? "PartTypeSetup"];
var completed=false;

ParticleParts[? Name]=script_execute(real(Setup))
//show_ingame_message("Particle "+Name+" has been created")
completed=true
//destroy map
ds_map_destroy(map)
return completed
