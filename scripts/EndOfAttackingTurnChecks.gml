///EndOfAttackingTurnChecks()
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            with(Cardholderlist[| ii]){
                Stats[? "AtkAlrdy"]=false
                //if death
                if Stats[? "Hp"]<1{
                    CardID=0
                }
            }
        }
    }
}

    
