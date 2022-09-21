///scr_ability_PlantVsZombies_MagnifyingGrass_Warcry()
var MapStr=argument0;

//Become random unit after 1 round
if global.NetworkObj.object_index=obj_server{
if Stats[? "Lifespan"]>0 && Stats[? "Finalized_Hp"]>0{
    //finding what cards are available
    var possibleList=ds_list_create()
    for(i=1;i<UnitID.UnitID_MAX;i++){
        if global.UnitDat_Pt[i]<=6 && i!=CardID{
            ds_list_add(possibleList,i)
        }
    }
    ds_list_shuffle(possibleList)
    selection=possibleList[| 0]
    ds_list_destroy(possibleList)
    
    //transform
    GameEvent_cardholders_Transform(selection)
    
    //tell other clients
    var _map=ds_map_create();
    _map[? "Sock"]=mysocket
    _map[? "Pos"]=Pos
    _map[? "Selection"]=selection
    var _mapstr=json_encode(_map)
    with(global.NetworkObj){
        for(var i=0;i<ds_list_size(socketlist);i++){
            var sock=socketlist[| i]
            buffer=buffer_create(2048,buffer_grow,1)
            buffer_write(buffer,buffer_s16,NETWORKPKT.TRANSFORMCARDHOLDER)
            buffer_write(buffer,buffer_string,_mapstr)
            network_send_packet(sock,buffer,buffer_tell(buffer))
            buffer_delete(buffer)
        }
    }
}
}
