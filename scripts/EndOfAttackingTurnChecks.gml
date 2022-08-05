///EndOfAttackingTurnChecks()
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            //going through every cardholder
            with(Cardholderlist[| ii]){
                //reset atk already
                Stats[? "AtkAlrdy"]=false
                
                //Activate Intrinsic Ability
                if Stats[? "IsAbilityStun"]=false{
                    if global.UnitDat_AbilityTrigger[CardID]=AbilityTrigger.Intrinsic{
                        script_execute(global.UnitDat_AbilityScript[CardID],"")
                    }
                }
                
                //if death
                if Stats[? "Hp"]<1{
                    //Activate Deathwish Ability
                    if Stats[? "IsAbilityStun"]=false{
                        if global.UnitDat_AbilityTrigger[CardID]=AbilityTrigger.Deathwish{
                            script_execute(global.UnitDat_AbilityScript[CardID],"")//insert last killer here
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
                if Stats[? "Hp"]<1{CardID=0}
            }
        }
    }
}
    
