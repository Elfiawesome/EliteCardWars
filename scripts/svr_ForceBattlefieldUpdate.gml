///svr_ForceBattlefieldUpdate()
var _map=ds_map_create()
for(var i=0;i<ds_list_size(socketlist);i++){
    //create map for each socket
    var _socketmap=ds_map_create();
    //for each unit
    var _sock=socketlist[| i];
    var _con=socket_to_instanceid[? _sock];
    
    //players name etc
    _socketmap[? "Name"]=_con.name
    _socketmap[? "Team"]=_con.Team
    _socketmap[? "Points"]=_con.Points
    
    //run through all cardholders
    var _cardholderlist=ds_map_create()
    for(var ii=0;ii<ds_list_size(_con.Cardholderlist);ii++){
        var cardholder=_con.Cardholderlist[| ii];//getting cardholder
        var _cardholderStats=ds_map_create()//creating a copy of cardholder's Stats json
        var _str=json_encode(cardholder.Stats)
        var _nm=json_decode(_str)
        ds_map_copy(_cardholderStats,_nm)//copying over
        _cardholderStats[? "CardID"]=cardholder.CardID
        ds_map_add_map(_cardholderlist,ii,_cardholderStats)
    }
    ds_map_add_map(_socketmap,"Cardholders",_cardholderlist)
    
    //wrap up
    ds_map_add_map(_map,_sock,_socketmap)
}
var _Mainmap=ds_map_create()
ds_map_add_map(_Mainmap,"Players",_map)
//add identifiers
_Mainmap[? "SpellsIdentifier"]=global.SpellsIdentifier
_Mainmap[? "UnitsIdentifier"]=global.UnitsIdentifier

var _mapstr=json_encode_destroy(_Mainmap)

for(var i=0;i<ds_list_size(socketlist);i++){
    var sock=socketlist[| i]
    buffer=buffer_create(2048,buffer_grow,1)
    buffer_write(buffer,buffer_s16,NETWORKPKT.BATTLEFIELDUPDATE)
    buffer_write(buffer,buffer_string,_mapstr)
    network_send_packet(sock,buffer,buffer_tell(buffer))
    buffer_delete(buffer)
}
