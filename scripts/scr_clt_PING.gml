///scr_clt_PING(buffer)
var buffer=argument0
//send server back Ping
buffer=buffer_create(1024,buffer_fixed,1)
buffer_write(buffer,buffer_s16,NETWORKPKT.PING)
network_send_packet(client,buffer,buffer_tell(buffer))
buffer_delete(buffer)



