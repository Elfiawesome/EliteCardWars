///scr_ability_GenshinImpact_RaidenShogun_Intrinsic()
if Stats[? "Lifespan"]>0{
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
    with(_con.Cardholderlist[| i]){
        //reduce cooldown
        if Stats[? "AbilityCooldown"]!=0{Stats[? "AbilityCooldown"]-=1}
    }
}
Stats[? "AbilityAlrdy"]=true
}
