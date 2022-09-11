///player_con_PlacingSpellCardDown()
if instance_exists(global.SelectedCard) && global.SelectedCard.CardType=1{
//Battlefield

if global.SpellDat_SpellCastType[global.SelectedCard.CardID]=SpellCastType.UnitTarget && position_meeting(mouse_x,mouse_y,obj_cardholder){//target
    var _cardholder=instance_position(mouse_x,mouse_y,obj_cardholder)
    if script_execute(global.SpellDat_CastCheck[global.SelectedCard.CardID],_cardholder){
        if Points>=global.SpellDat_Pt[global.SelectedCard.CardID]{
        Points-=global.SpellDat_Pt[global.SelectedCard.CardID]
            
            var _map=ds_map_create();
            _map[? "socket"]=global.NetworkObj.mysocket
            _map[? "SpellID"]=global.SelectedCard.CardID
            _map[? "Pos"]=_cardholder.Pos
            
            with(global.NetworkObj){
                if global.NetworkObj.object_index=obj_server{
                    svr_CastSpell(_map)
                }
                if global.NetworkObj.object_index=obj_client{
                    buffer=buffer_create(2048,buffer_fixed,1)
                    buffer_write(buffer,buffer_s16,NETWORKPKT.CASTSPELL)
                    buffer_write(buffer,buffer_string,json_encode_destroy(_map))
                    network_send_packet(client,buffer,buffer_tell(buffer))
                    buffer_delete(buffer)
                }
            }
        }
    instance_destroy(global.SelectedCard)
    ds_list_delete(cardList,ds_list_find_index(cardList,global.SelectedCard))
    }
}
if global.SpellDat_SpellCastType[global.SelectedCard.CardID]=SpellCastType.Battlefield{//Non target
        if Points>=global.SpellDat_Pt[global.SelectedCard.CardID]{
        Points-=global.SpellDat_Pt[global.SelectedCard.CardID]
            
            var _map=ds_map_create();
            _map[? "socket"]=global.NetworkObj.mysocket
            _map[? "SpellID"]=global.SelectedCard.CardID
            
            with(global.NetworkObj){
                if global.NetworkObj.object_index=obj_server{
                    svr_CastSpell(_map)
                }
                if global.NetworkObj.object_index=obj_client{
                    buffer=buffer_create(2048,buffer_fixed,1)
                    buffer_write(buffer,buffer_s16,NETWORKPKT.CASTSPELL)
                    buffer_write(buffer,buffer_string,json_encode_destroy(_map))
                    network_send_packet(client,buffer,buffer_tell(buffer))
                    buffer_delete(buffer)
                }
            }
        }
    instance_destroy(global.SelectedCard)
    ds_list_delete(cardList,ds_list_find_index(cardList,global.SelectedCard))
}
}
