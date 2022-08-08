///EndOfAttackingTurnChecks()
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            //going through every cardholder
            with(Cardholderlist[| ii]){
                //reset atk already
                Stats[? "AtkAlrdy"]=false
                //reset ability already
                Stats[? "AbilityAlrdy"]=false
                
                //Activate Intrinsic Ability
                if Stats[? "IsAbilityStun"]=false{
                    var _no=IsAbilityTrigger(CardID,AbilityTrigger.Intrinsic)
                    if _no!=-1{
                        script_execute(global.UnitDat_AbilityScript[CardID,_no],"")
                    }
                }
                
                //if death
                if Stats[? "Hp"]<1{
                    //Activate Deathwish Ability
                    if Stats[? "IsAbilityStun"]=false{
                        var _no=IsAbilityTrigger(CardID,AbilityTrigger.Deathwish)
                        if _no!=-1{
                            script_execute(global.UnitDat_AbilityScript[CardID,_no],"")//insert last killer here
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
                if Stats[? "Hp"]<1{GameEvent_cardholders_Death()}
                //reducing stats timer
                if Stats[? "IsFrozen"]!=0{Stats[? "IsFrozen"]-=1}
                if Stats[? "IsImmune"]!=0{Stats[? "IsImmune"]-=1}
                if Stats[? "AbilityCooldown"]!=0{Stats[? "AbilityCooldown"]-=1}
                if Stats[? "IsSPImmune"]!=0{Stats[? "IsSPImmune"]-=1}
                if Stats[? "IsBAImmune"]!=0{Stats[? "IsBAImmune"]-=1}
            }
        }
    }
}
    
