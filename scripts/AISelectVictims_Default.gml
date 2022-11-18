var _MapStrategy=ds_map_create()
var _AlreadyAttackedCardsList=ds_list_create()
for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){//list through all players
    var _con=global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]
    if _con.Team!=Team{
        for(var ii=0;ii<ds_list_size(_con.Cardholderlist);ii++){//list through all cardholders
            var _ch=_con.Cardholderlist[| ii]
            if _ch.CardID!=0 && _ch.Stats[? "Finalized_Hp"]>0{
                var _l=ds_list_create()
                for(var i3=0;i3<ds_list_size(Cardholderlist);i3++){
                if Cardholderlist[| i3].CardID!=0 && Cardholderlist[| i3].Stats[? "AtkAlrdy"]=false && ds_list_find_index(_AlreadyAttackedCardsList,Cardholderlist[| i3])=-1{
                    //if (!HasForceAttack(_ch) && scr_ValidAttackSpot(Cardholderlist[| i3],_ch)) || (HasForceAttack(_ch) && IsForceAttackHolder(_ch)){
                    if scr_OverallValidAttackSpot(_ch,Cardholderlist[| i3]){
                        ds_list_add(_l,Cardholderlist[| i3])
                        ds_list_add(_AlreadyAttackedCardsList,Cardholderlist[| i3])
                        //reset bot speed
                        BotSpeed=0
                    }
                }
                }
                ds_map_add_list(_MapStrategy,_ch,_l)
            }
        }
    }
}
ds_list_destroy(_AlreadyAttackedCardsList)

return _MapStrategy
