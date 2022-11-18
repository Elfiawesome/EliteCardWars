var _MapStrategy=ds_map_create()
var _AlreadyAttackedCardsList=ds_list_create()
//set priority on which socket to attack
var _socketpriority=ds_priority_create()
for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _con=global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]
    if _con.Team!=Team{
    var _val=0
        for(var ii=0;ii<ds_list_size(_con.Cardholderlist);ii++){
            var _ch=_con.Cardholderlist[| ii];
            _val+=(
                _ch.Stats[? "Hp"]*clamp(sign(_ch.Stats[? "Hp"]),0,1)+
                _ch.Stats[? "Atk"]*clamp(sign(_ch.Stats[? "Atk"]),0,1))
        }
    ds_priority_add(_socketpriority,global.NetworkObj.socketlist[| i],_val)
    }
}

while(!ds_priority_empty(_socketpriority)){//list through all sockets by priority
    var _con=global.NetworkObj.socket_to_instanceid[? ds_priority_find_max(_socketpriority)]
    
    //create priority for all cardholders
    var _cardholderpriority=ds_priority_create()
    for(var ii=0;ii<ds_list_size(_con.Cardholderlist);ii++){//list through all cardholders
        var _ch=_con.Cardholderlist[| ii]
        var _val=(
            _ch.Stats[? "Hp"]*clamp(sign(_ch.Stats[? "Hp"]),0,1)+
            _ch.Stats[? "Atk"]*clamp(sign(_ch.Stats[? "Atk"]),0,1))
        ds_priority_add(_cardholderpriority,ii,_val)
    }
    
    while(!ds_priority_empty(_cardholderpriority)){
        //attack them
        var _ch=_con.Cardholderlist[| ds_priority_find_max(_cardholderpriority)]
        if _ch.CardID!=0 && _ch.Stats[? "Finalized_Hp"]>0{
            //Use all of our power to destroy it
            var _l=ds_list_create()
            var _TempHp=_ch.Stats[? "Finalized_Hp"]
            for(var i3=0;i3<ds_list_size(Cardholderlist);i3++){
            if Cardholderlist[| i3].CardID!=0 && Cardholderlist[| i3].Stats[? "AtkAlrdy"]=false && ds_list_find_index(_AlreadyAttackedCardsList,Cardholderlist[| i3])=-1{
                if scr_OverallValidAttackSpot(_ch,Cardholderlist[| i3]){
                    ds_list_add(_l,Cardholderlist[| i3])
                    ds_list_add(_AlreadyAttackedCardsList,Cardholderlist[| i3])
                    _TempHp-=Cardholderlist[| i3].Stats[? "Finalized_Atk"]
                    //reset bot speed
                    BotSpeed=0
                    if _TempHp<0{break;}
                }
            }
            }
            ds_map_add_list(_MapStrategy,_ch,_l)//adding it to the map
        }
        ds_priority_delete_max(_cardholderpriority)    
    }
    ds_priority_destroy(_cardholderpriority)
    

    //delete this
    ds_priority_delete_max(_socketpriority)
}
ds_list_destroy(_AlreadyAttackedCardsList)
ds_priority_destroy(_socketpriority)

return _MapStrategy
