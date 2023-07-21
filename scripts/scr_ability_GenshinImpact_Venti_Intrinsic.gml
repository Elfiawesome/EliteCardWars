///scr_ability_GenshinImpact_Venti_Intrinsic()
if Stats[? "AbilityCooldown"]=0{
    var _id=GetMultiStatsString(id) 
    var mDA=Stats[? "Multi_DodgeAmt"];
    var mDD=Stats[? "Multi_DodgeDur"];
    if ds_map_exists(mDA,_id) && ds_map_exists(mDD,_id){
        mDA[? _id]+=1
        mDD[? _id]=-1
    }else{
        mDA[? _id]=1
        mDD[? _id]=-1
    }
    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]
    Stats[? "AbilityAlrdy"]=true
}
