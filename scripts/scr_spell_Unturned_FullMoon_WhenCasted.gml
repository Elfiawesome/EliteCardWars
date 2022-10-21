///scr_spell_Unturned_Bandage_WhenCasted()
var MapStr=argument0
with(global.NetworkObj.socket_to_instanceid[? mysocket]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                Stats[? "Hp"]+=10
                Stats[? "Base_Hp"]+=10
                Stats[? "Atk"]+=10
                Stats[? "Base_Atk"]+=10
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
}
