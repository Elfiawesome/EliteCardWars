///player_con_AbilitySelection()
if global.NetworkObj.Turnstage[global.NetworkObj.Turn]=mysocket{
    if keyboard_check_pressed(ord("A")){
        if position_meeting(mouse_x,mouse_y,obj_cardholder){
        var _cardholder=instance_position(mouse_x,mouse_y,obj_cardholder)
        if ds_list_find_index(global.NetworkObj.SelectedCardHolders,_cardholder)=-1{//only if no attacking selected
            //selecting my units [AbilityActivateTarget]
            if IsAbilityTrigger(_cardholder.CardID,AbilityTrigger.ActivateTarget)!=-1 && _cardholder.Stats[? "AbilityCooldown"]=0{
                if _cardholder.CardID!=0{
                if _cardholder.mysocket=mysocket && _cardholder.Stats[? "AbilityAlrdy"]=false{
                    if ds_list_find_index(Cardholderlist,_cardholder)!=-1{
                    if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,_cardholder)=-1{
                        ds_list_add(global.NetworkObj.SelectedCardHolders_Ability,_cardholder)
                        _cardholder.IsSelected_Ability=true
                    }else{
                        ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,_cardholder))
                        _cardholder.IsSelected_Ability=false
                    }
                    }
                }
                }
            }
            }
            
            //Activate non Target Ability [AbilityActivate]
            if IsAbilityTrigger(_cardholder.CardID,AbilityTrigger.Activate)!=-1 && _cardholder.Stats[? "AbilityCooldown"]=0{
                if _cardholder.CardID!=0{
                if _cardholder.mysocket=mysocket && _cardholder.Stats[? "AbilityAlrdy"]=false{
                    var _map=ds_map_create();
                    _map[? "AttackerPos"]=_cardholder.Pos
                    _map[? "AttackerSock"]=_cardholder.mysocket
                    var _mapstr=json_encode_destroy(_map)
                    
                    with(global.NetworkObj){
                        if global.NetworkObj.object_index=obj_server{
                            svr_ActivateAbility(_mapstr)
                        }
                        if global.NetworkObj.object_index=obj_client{
                            buffer=buffer_create(1024,buffer_fixed,1)
                            buffer_write(buffer,buffer_s16,NETWORKPKT.ACTIVATEABILITY)
                            buffer_write(buffer,buffer_string,_mapstr)
                            network_send_packet(client,buffer,buffer_tell(buffer))
                            buffer_delete(buffer)
                        }
                    }
                }
                }
            }  
        }
    }
    //targetting other enemies [AbilityActivateTarget]
    if mouse_check_button_pressed(mb_left){
        if position_meeting(mouse_x,mouse_y,obj_cardholder){
        var _cardholder=instance_position(mouse_x,mouse_y,obj_cardholder)
            if !ds_list_empty(global.NetworkObj.SelectedCardHolders_Ability){
                var _attacker=global.NetworkObj.SelectedCardHolders_Ability[| 0];
                if IsAbilityTrigger(_attacker.CardID,AbilityTrigger.ActivateTarget)!=-1{
                    var _map=ds_map_create();
                    _map[? "VictimPos"]=_cardholder.Pos
                    _map[? "VictimSock"]=_cardholder.mysocket
                    _map[? "AttackerPos"]=_attacker.Pos
                    _map[? "AttackerSock"]=_attacker.mysocket
                    var _mapstr=json_encode_destroy(_map)
                    
                    with(global.NetworkObj){
                        if global.NetworkObj.object_index=obj_server{
                            svr_ActivateAbilityTarget(_mapstr)
                        }
                        if global.NetworkObj.object_index=obj_client{
                            buffer=buffer_create(1024,buffer_fixed,1)
                            buffer_write(buffer,buffer_s16,NETWORKPKT.ACTIVATEABILITYTARGET)
                            buffer_write(buffer,buffer_string,_mapstr)
                            network_send_packet(client,buffer,buffer_tell(buffer))
                            buffer_delete(buffer)
                        }
                    }
                }
            }
        }
    }
}
