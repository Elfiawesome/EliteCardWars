///player_con_AttackHero(AttackinglistObj, VictimHeroObj, AttackingObjects)
var AttackinglistObj=argument0
var VictimObj=argument1
var AttackingObjects=argument2

if VictimObj.mysocket!=mysocket && global.NetworkObj.socket_to_instanceid[? VictimObj.mysocket].Team!=Team{}else{exit;}
//if battlefield empty then can atk hero
if scr_ConBattlefieldSize(global.NetworkObj.socket_to_instanceid[? VictimObj.mysocket])<1{
    //Setting all Attacking data into a json
    var DatMap=ds_map_create()
    var AttackingList=ds_list_create()
    for(var i=0;i<ds_list_size(AttackinglistObj);i++){
        var _o=AttackinglistObj[| i];
        var _map=ds_map_create();
        _map[? "Id"]=_o.CardID
        _map[? "Pos"]=_o.Pos
        _map[? "Socket"]=_o.mysocket
        ds_list_add(AttackingList,json_encode_destroy(_map))
        if AttackingObjects!=0{ds_list_add(AttackingObjects,_o)}
    }
    var AttackingListString=ds_list_write(AttackingList);
    ds_list_destroy(AttackingList)
    DatMap[? "AttackingList"]=AttackingListString
    
    //setting up victim data
    var _map=ds_map_create();
    _map[? "Id"]=VictimObj.CardID
    _map[? "Socket"]=VictimObj.mysocket
    ds_map_add_map(DatMap,"Victim",_map)
    //wrapping up the DatMapString
    var DatMapString=json_encode_destroy(DatMap)
    
    //Sending to server
    if global.NetworkObj.object_index=obj_client{
        with(global.NetworkObj){
            buffer=buffer_create(2048,buffer_fixed,1)
            buffer_write(buffer,buffer_s16,NETWORKPKT.ATTACKHERO)
            buffer_write(buffer,buffer_string,DatMapString)
            network_send_packet(client,buffer,buffer_tell(buffer))
            buffer_delete(buffer)
        }
    }
    if global.NetworkObj.object_index=obj_server{
        with(global.NetworkObj){
            svr_AttackHero(DatMapString)
        }
    }
}


