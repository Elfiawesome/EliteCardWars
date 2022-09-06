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

CheckingForVictoryOrEliminations()

