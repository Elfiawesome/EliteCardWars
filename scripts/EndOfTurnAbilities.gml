///EndOfTurnAbilities()
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        if IsSpectating=false{
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            var _ch=Cardholderlist[| ii]
            if _ch.CardID!=0{
            //reset values
            with(_ch){
                //increasing lifespan
                Stats[? "Lifespan"]++
                //reset atk already
                Stats[? "AtkAlrdy"]=false
                //reset ability already
                Stats[? "AbilityAlrdy"]=false
            }
            }
        }
        with(Hero){
            Stats[? "AbilityAlrdy"]=false
            Stats[? "ForceAttackHolder"]=-1
        }
        }
    }
}
repeat(ds_list_size(socketlist)){
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        if IsSpectating=false{
        //Hero
        var _hh=Hero
        with(_hh){
            //Activate Intrinsic Hero Ability
            Activate_Intrinsic_HeroAbility()
        }
        //Cardholders Units
        repeat(ds_list_size(Cardholderlist)){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            var _ch=Cardholderlist[| ii]
            if _ch.CardID!=0 && _ch.Stats[? "AbilityAlrdy"]=false{
                with(_ch){
                    //Activate Intrinsic Ability
                    Activate_Intrinsic_Ability()
                    
                    //Activate Deathwish Ability
                    if Stats[? "Finalized_Hp"]<1{
                        //activate my death
                        Activate_Deathwish_Ability()
                    }
                }
            }
            //activate my friends death
            if _ch.CardID!=0 && _ch.Stats[? "Finalized_Hp"]<1{
                for(var i3=0;i3<ds_list_size(Cardholderlist);i3++){
                    if _ch!=Cardholderlist[| i3]{
                        with(Cardholderlist[| i3]){
                            if CardID!=0 && Stats[? "AbilityAlrdy"]=false{
                                Activate_FriendDeath_Ability(_ch)
                            }
                        }                    
                    }
                }
            }
            
        }
        }
        }
    }
}
}
