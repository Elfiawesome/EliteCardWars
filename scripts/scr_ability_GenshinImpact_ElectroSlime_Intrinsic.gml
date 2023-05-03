///scr_ability_GenshinImpact_ElectroSlime_Intrinsic()
if Stats[? "Lifespan"]>0{//Buff Atks [ONLY IF END OF TURN]
var _card=id
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
with(_con){
    var _multiplier=0
    for(var i=0;i<ds_list_size(Cardholderlist)i++){
        if Cardholderlist[| i].CardID!=0{
            _multiplier++
        }
    }
    for(var i=0;i<ds_list_size(Cardholderlist)i++){
        with(Cardholderlist[| i]){
            if id!=_card{
                Stats[? "Atk"]+=1*_multiplier
                Stats[? "Base_Atk"]+=1*_multiplier
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
}
Stats[? "AbilityAlrdy"]=true
}
