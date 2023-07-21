///EndOfAttackingTurnChecks()
//Running Poison And Burn
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        if IsSpectating=false{
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
        var _ch=Cardholderlist[| ii]
        if _ch.CardID!=0{
            with(_ch){
                player_con_CardholdersUpdateMultiStats()
                if Stats[? "IsStatusEffectImmune"]=0{
                GameEvent_cardholders_DealBurnDamage(_ch)
                GameEvent_cardholders_DealPoisonDamage(_ch)
                }
            }
        }
        }
        }
    }
}
//runnning all end of turn abilites
EndOfTurnAbilities()

//Running Spell Abilites
EndOfTurnSpellsCheck()

//Reducing Timers & Deaths
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
    if IsSpectating=false{
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            with(Cardholderlist[| ii]){
                //reducing stats timer
                var _l=ds_list_create()//temp list
                var _m=Stats[? "Multi_IsFrozen"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_IsImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_IsSPImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_IsBAImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_IsStatusEffectImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_IsSpellsImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_IsAbilityImmune"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
                //reduce timer on Dodges
                var _m=Stats[? "Multi_DodgeDur"];var _n=Stats[? "Multi_DodgeAmt"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l)
                //reduce timer on burn and poison
                var _m=Stats[? "Multi_BurnDuration"];var _n=Stats[? "Multi_BurnDmg"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_PoisonDuration"];var _n=Stats[? "Multi_PoisonDmg"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l)
                //Other Hp & Atk
                var _m=Stats[? "Multi_OtherAtkDuration"];var _n=Stats[? "Multi_OtherAtkAmt"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_OtherHpDuration"];var _n=Stats[? "Multi_OtherHpAmt"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l)
                //Def
                var _m=Stats[? "Multi_DefDuration"];var _n=Stats[? "Multi_DefAmt"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l)
                
                //Damage Multiplier
                var _m=Stats[? "Multi_DamageIntakeMultiplierDur"];var _n=Stats[? "Multi_DamageIntakeMultiplierAmt"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l)
                var _m=Stats[? "Multi_DamageOutputMultiplierDur"];var _n=Stats[? "Multi_DamageOutputMultiplierAmt"];
                for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l) 
                ds_list_destroy(_l)
                player_con_CardholdersUpdateMultiStats()
                
                //reduce cooldown
                if Stats[? "AbilityCooldown"]!=0{Stats[? "AbilityCooldown"]-=1}
                if Stats[? "Finalized_Hp"]<1{GameEvent_cardholders_Death()}
            }
        }
        //hero
        with(Hero){
            var _l=ds_list_create()//temp list
            var _m=Stats[? "Multi_ExtraPointsDuration"];var _n=Stats[? "Multi_ExtraPointsAmt"];
            for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);ds_map_delete(_n,_l[| _i])};ds_list_clear(_l)
            var _m=Stats[? "Multi_DisableSpells"];
            for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i]);};ds_list_clear(_l)
            var _m=Stats[? "Multi_IsImmune"];
            for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]!=0{_m[? k]-=1;if _m[? k]=0{ds_list_add(_l,k);}}else{ds_list_add(_l,k);}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)    
            ds_list_destroy(_l)
            if Stats[? "AbilityCooldown"]!=0{Stats[? "AbilityCooldown"]-=1}
            player_con_HeroUpdateMultiStats()
        }
        //cards in hand
        for(var ii=0;ii<ds_list_size(HandCards);ii++){
            var _map=json_decode(HandCards[| ii]);
            if ds_map_exists(_map,"Locked"){if _map[? "Locked"]>0{_map[? "Locked"]-=1}}
            HandCards[| ii]=json_encode(_map)
            ds_map_destroy(_map)
        }
    }
    }
}
CheckingForVictoryOrEliminations()//psssible problem here
CheckingLocalCards()
