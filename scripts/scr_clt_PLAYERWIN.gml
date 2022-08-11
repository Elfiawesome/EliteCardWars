///scr_clt_PLAYERWIN()
var buffer=argument0
var team=buffer_read(buffer,buffer_s32);

if socket_to_instanceid[? mysocket].Team=real(team){
    var gea=instance_create(0,0,obj_GameEndAnnouncement);
    gea.image_index=0
}else{
    var gea=instance_create(0,0,obj_GameEndAnnouncement);
    gea.image_index=2
}
