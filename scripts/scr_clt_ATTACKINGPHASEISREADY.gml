///scr_clt_TURNMOVEON(buffer)
var buffer=argument0
var sock=buffer_read(buffer,buffer_s16)
if ds_list_find_index(ReadySocket,sock)=-1{
    ds_list_add(ReadySocket,sock)
}
