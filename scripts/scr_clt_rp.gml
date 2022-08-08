///scr_clt_rp(buffer)
var buffer=argument0
var type=buffer_read(buffer,buffer_s16)

switch(type){
    case NETWORKPKT.PLAYERCONNECT:
        scr_clt_PLAYERCONNECT(buffer)
    break;
    case NETWORKPKT.PLAYERINIT:
        scr_clt_PLAYERINIT(buffer)
    break;
    case NETWORKPKT.PLAYERINITCREATE:
        scr_clt_PLAYERINITCREATE(buffer)
    break;
    case NETWORKPKT.PLAYERDISCONNECT:
        scr_clt_PLAYERDISCONNECT(buffer)
    break;
    case NETWORKPKT.PING:
        scr_clt_PING(buffer)
    break;
    case NETWORKPKT.STARTGAME:
        scr_clt_STARTGAME(buffer)
    break;
    case NETWORKPKT.TURNMOVEON:
        scr_clt_TURNMOVEON(buffer)
    break;
    case NETWORKPKT.ATTACKINGPHASEISREADY:
        scr_clt_ATTACKINGPHASEISREADY(buffer)
    break;
    case NETWORKPKT.SUMMONCARD:
        scr_clt_SUMMONCARD(buffer)
    break;
    case NETWORKPKT.ATTACKCARDHOLDER:
        scr_clt_ATTACKCARDHOLDER(buffer)
    break;
    case NETWORKPKT.ACTIVATEABILITYTARGET:
        scr_clt_ACTIVATEABILITYTARGET(buffer)
    break;
    case NETWORKPKT.ATTACKHERO:
        scr_clt_ATTACKHERO(buffer)
    break;
}

