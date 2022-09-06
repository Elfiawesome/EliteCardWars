///EndOfAttackingTurnChecks()
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            var _ch=Cardholderlist[| ii]
            if _ch.CardID=0{continue;}
            //going through every cardholder
            with(_ch){
                //increasing lifespan
                Stats[? "Lifespan"]++
                //reset atk already
                Stats[? "AtkAlrdy"]=false
                //reset ability already
                Stats[? "AbilityAlrdy"]=false
                
                //Activate Intrinsic Ability
                Activate_Intrinsic_Ability()
                
                //Activate Deathwish Ability
                if Stats[? "Hp"]<1{
                    //activate my death
                    Activate_Deathwish_Ability()
                }
            }
            //activate my friends death
            if _ch.Stats[? "Hp"]<1{
            for(var i3=0;i3<ds_list_size(Cardholderlist);i3++){
                if _ch!=Cardholderlist[| i3]{
                    with(Cardholderlist[| i3]){
                        if Stats[? "IsAbilityStun"]=false{
                            if IsAbilityTrigger(CardID,AbilityTrigger.FriendDeath)!=-1{
                                var _no=IsAbilityTrigger(CardID,AbilityTrigger.FriendDeath)
                                script_execute(global.UnitDat_AbilityScript[CardID,_no],other.id)
                            }
                        }
                    }
                }
            }
            }
        }
    }
}
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            with(Cardholderlist[| ii]){
                //reducing stats timer
                if Stats[? "IsFrozen"]!=0{Stats[? "IsFrozen"]-=1}
                if Stats[? "IsImmune"]!=0{Stats[? "IsImmune"]-=1}
                if Stats[? "AbilityCooldown"]!=0{Stats[? "AbilityCooldown"]-=1}
                if Stats[? "IsSPImmune"]!=0{Stats[? "IsSPImmune"]-=1}
                if Stats[? "IsBAImmune"]!=0{Stats[? "IsBAImmune"]-=1}
                if Stats[? "Hp"]<1{GameEvent_cardholders_Death()}
            }
        }
    }
}

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
        }
    }
}
