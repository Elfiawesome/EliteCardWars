///player_con_AbilitySelection()
if global.NetworkObj.Turnstage[global.NetworkObj.Turn]=mysocket{
    if IsHeroActivateButton{
        var _heroholder=Hero
        if true{}//put if other card holders arent selected [SelectedCardHolders_Ability etc..]
        
        //Activate Target Ability
        if IsHeroAbilityTrigger(_heroholder.CardID,AbilityTrigger.ActivateTarget)!=-1 && _heroholder.Stats[? "AbilityCooldown"]=0 && script_execute(global.HeroDat_AbilityTargetSelectCheck[_heroholder.CardID],_heroholder){
            if _heroholder.CardID!=0 && _heroholder.Stats[? "AbilityAlrdy"]=false{
                if !global.NetworkObj.IsHeroSelected{
                    global.NetworkObj.IsHeroSelected=true
                }else{
                    global.NetworkObj.IsHeroSelected=false
                }
            }
        }
        //Activate non Target Ability [AbilityActivate]
        if IsHeroAbilityTrigger(_heroholder.CardID,AbilityTrigger.Activate)!=-1 && _heroholder.Stats[? "AbilityCooldown"]=0 && script_execute(global.HeroDat_AbilityTargetSelectCheck[_heroholder.CardID],_heroholder){
            if _heroholder.CardID!=0 && _heroholder.Stats[? "AbilityAlrdy"]=false{
                var _map=ds_map_create();
                _map[? "AttackerSock"]=_heroholder.mysocket
                var _mapstr=json_encode_destroy(_map)
                
                with(global.NetworkObj){
                    if global.NetworkObj.object_index=obj_server{
                        svr_HeroActivateAbility(_mapstr)
                    }
                    if global.NetworkObj.object_index=obj_client{
                        buffer=buffer_create(1024,buffer_fixed,1)
                        buffer_write(buffer,buffer_s16,NETWORKPKT.HEROACTIVATEABILITY)
                        buffer_write(buffer,buffer_string,_mapstr)
                        network_send_packet(client,buffer,buffer_tell(buffer))
                        buffer_delete(buffer)
                    }
                }
            }
        }
    }
    //targetting other enemies [AbilityActivateTarget]
    if mouse_check_button_pressed(mb_left){
        if position_meeting(mouse_x,mouse_y,obj_cardholder){
        var _cardholder=instance_position(mouse_x,mouse_y,obj_cardholder)
            if global.NetworkObj.IsHeroSelected{
                var _attacker=Hero;
                
                var _no=IsHeroAbilityTrigger(_attacker.CardID,AbilityTrigger.ActivateTarget)
                if _no!=-1{
                if script_execute(global.HeroDat_AbilityTargetCheck[_attacker.CardID,_no],_cardholder,_attacker){
                    var _map=ds_map_create();
                    _map[? "VictimPos"]=_cardholder.Pos
                    _map[? "VictimSock"]=_cardholder.mysocket
                    _map[? "AttackerSock"]=_attacker.mysocket
                    var _mapstr=json_encode_destroy(_map)
                    
                    with(global.NetworkObj){
                        if global.NetworkObj.object_index=obj_server{
                            svr_HeroActivateAbilityTarget(_mapstr)
                        }
                        if global.NetworkObj.object_index=obj_client{
                            buffer=buffer_create(1024,buffer_fixed,1)
                            buffer_write(buffer,buffer_s16,NETWORKPKT.HEROACTIVATEABILITYTARGET)
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
}
