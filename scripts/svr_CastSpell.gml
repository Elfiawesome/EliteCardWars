///svr_CastSpell(map)
var _map=argument0

var str=json_encode(_map)
CastSpell(_map)
for(var i=0;i<ds_list_size(socketlist);i++){
    buffer=buffer_create(1024,buffer_fixed,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.CASTSPELL)
    buffer_write(buffer,buffer_string,str)
    network_send_packet(socketlist[| i],buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}
