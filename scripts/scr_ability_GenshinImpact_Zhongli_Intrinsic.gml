///scr_ability_GenshinImpact_Zhongli_Intrinsic()
if Stats[? "AbilityCooldown"]=0{
    var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
    var _id=GetMultiStatsString(id)
    with(_con){
        for(var i=0;i<ds_list_size(Cardholderlist)i++){
            with(Cardholderlist[| i]){
                var mDA=Stats[? "Multi_DefAmt"];
                var mDD=Stats[? "Multi_DefDuration"];
                mDA[? _id]=15
                mDD[? _id]=2
            }
        }
    }
    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]
    Stats[? "AbilityAlrdy"]=true
}
