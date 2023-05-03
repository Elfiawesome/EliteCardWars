///ani_wait(map)
var str=argument0;
var map=json_decode(str);
var Time=map[? "Time"];
var completed=false;

if Timer>Time{
    completed=true
    Timer=0
}else{
    Timer++
}

//destroy map
ds_map_destroy(map)

return completed
