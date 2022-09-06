///CheckingForVictoryOrEliminations
if global.NetworkObj.object_index=obj_server{
    //check for victory
    var Tcntr=0
    var winnerTeam=0
    for (var k=ds_map_find_first(TeamMap);!is_undefined(k);k=ds_map_find_next(TeamMap,k)){
        var _l=ds_list_create()
        ds_list_read(_l,TeamMap[? k])
        var cntr=0
        for(var i=0;i<ds_list_size(_l);i++){
            if socket_to_instanceid[? real(_l[| i])].Hero.Stats[? "Hp"]<=0{
                cntr+=1
            }
        }
        if cntr=ds_list_size(_l){
            Tcntr++
        }else{
            winnerTeam=k
        }
        ds_list_destroy(_l)
    }
    if Tcntr=ds_map_size(TeamMap)-1{
        if socket_to_instanceid[? mysocket].Team=real(winnerTeam){
            var gea=instance_create(0,0,obj_GameEndAnnouncement);
            gea.image_index=0
        }else{
            var gea=instance_create(0,0,obj_GameEndAnnouncement);
            gea.image_index=2
        }
        //tell everyone this team is the winner
        for(var i=0;i<ds_list_size(socketlist);i++){
            buffer=buffer_create(2048,buffer_fixed,1)
            buffer_write(buffer,buffer_s16,NETWORKPKT.PLAYERWIN)
            buffer_write(buffer,buffer_s32,winnerTeam)
            network_send_packet(socketlist[| i],buffer,buffer_tell(buffer))
            buffer_delete(buffer)
        }
        exit;
    }
    //declare eliminated && Victory
    for(var k=ds_map_find_first(socket_to_instanceid);!is_undefined(k);k=ds_map_find_next(socket_to_instanceid,k)){
        var con = socket_to_instanceid[? k];
        if con.Hero=-1{continue;}
        if con.Hero.Stats[? "Hp"]<=0{
            with(con){GameEvent_Con_HeroDeath()}
            if con.mysocket=mysocket{
                var gea=instance_create(0,0,obj_GameEndAnnouncement);
                gea.image_index=1
            }
            //tell everyone this client is eliminated
            for(var i=0;i<ds_list_size(socketlist);i++){
                buffer=buffer_create(2048,buffer_fixed,1)
                buffer_write(buffer,buffer_s16,NETWORKPKT.PLAYERELIMINATEED)
                buffer_write(buffer,buffer_s32,k)
                network_send_packet(socketlist[| i],buffer,buffer_tell(buffer))
                buffer_delete(buffer)
            }
            update_json_TeamMap()
            update_Turnstage(TeamMap)
        }
    }
}
