///EndOfTurnPassives()
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        if IsSpectating=false{
            for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
                var _ch=Cardholderlist[| ii]
                if _ch.CardID!=0{
                    with(_ch){
                        Activate_Passive_Ability()
                    }
                }
            }
        }
    }
}
