///scr_clt_PLAYERELIMINATEED()
var buffer=argument0
var sock=buffer_read(buffer,buffer_s32);

var con=socket_to_instanceid[? real(sock)];
with(con){GameEvent_Con_HeroDeath()}
if real(sock)=mysocket{
    var gea=instance_create(0,0,obj_GameEndAnnouncement);
    gea.image_index=1
}
update_json_TeamMap()
update_Turnstage(TeamMap)
