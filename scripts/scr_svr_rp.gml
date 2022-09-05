///scr_svr_rp(socket,buffer)
var socket=argument0
var buffer=argument1
var type=buffer_read(buffer,buffer_s16)

switch(type){
    case NETWORKPKT.PLAYERINIT:
        scr_svr_PLAYERINIT(socket,buffer)
    break;
    case NETWORKPKT.PING:
        scr_svr_PING(socket,buffer)
    break;
    case NETWORKPKT.EXAMPLEPACKET:
        show_message("Example Packet received")
    break;
    case NETWORKPKT.TURNMOVEON:
        scr_svr_TURNMOVEON(socket,buffer)
    break;
    case NETWORKPKT.ATTACKINGPHASEISREADY:
        scr_svr_ATTACKINGPHASEISREADY(socket,buffer)
    break;
    case NETWORKPKT.SUMMONCARD:
        scr_svr_SUMMONCARD(socket,buffer)
    break;
    case NETWORKPKT.ATTACKCARDHOLDER:
        scr_svr_ATTACKCARDHOLDER(socket,buffer)
    break;
    case NETWORKPKT.ACTIVATEABILITYTARGET:
        scr_svr_ACTIVATEABILITYTARGET(socket,buffer)
    break;
    case NETWORKPKT.ACTIVATEABILITY:
        scr_svr_ACTIVATEABILITY(socket,buffer)
    break;
    case NETWORKPKT.ATTACKHERO:
        scr_svr_ATTACKHERO(socket,buffer)
    break;
}

