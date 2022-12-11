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
            var _con=socket_to_instanceid[? real(_l[| i])]
            if script_execute(global.HeroDat_AI_LoseStateScript[_con.Hero.CardID],_con){//finding if lose state
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
    //if draw
    if Tcntr = ds_map_size(TeamMap){
        show_message("A Draw has insured")
        exit;
    }
    //declare eliminated && Victory
    for(var k=ds_map_find_first(socket_to_instanceid);!is_undefined(k);k=ds_map_find_next(socket_to_instanceid,k)){
        var con = socket_to_instanceid[? k];
        if con.Hero!=-1{
        if script_execute(global.HeroDat_AI_LoseStateScript[con.Hero.CardID],con){//finding if lose state
            with(con){GameEvent_Con_HeroDeath();}
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
}
