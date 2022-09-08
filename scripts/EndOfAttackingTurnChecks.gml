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
                var _m=Stats[? "Multi_IsFrozen"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;}else{ds_map_delete(_m,k)}}
                var _m=Stats[? "Multi_IsImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;}else{ds_map_delete(_m,k)}}
                var _m=Stats[? "Multi_IsSPImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;}else{ds_map_delete(_m,k)}}
                var _m=Stats[? "Multi_IsBAImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;}else{ds_map_delete(_m,k)}}
                player_con_CardholdersUpdateMultiStats()
                
                if Stats[? "AbilityCooldown"]!=0{Stats[? "AbilityCooldown"]-=1}
                if Stats[? "Hp"]<1{GameEvent_cardholders_Death()}
            }
        }
    }
}

CheckingForVictoryOrEliminations()

