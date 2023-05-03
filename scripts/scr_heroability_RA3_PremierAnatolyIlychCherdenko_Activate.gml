///scr_heroability_RA3_PremierAnatolyIlychCherdenko_Activate()
var MapStr=argument0;
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
with(stid[? atkr.mysocket]){
    var _curHighest=0
    var _curHighestPt=0
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        if Cardholderlist[| i].Stats[? "Pt"]>_curHighestPt{
            _curHighestPt=Cardholderlist[| i].Stats[? "Pt"]
            _curHighest=Cardholderlist[| i]
        }
    }
    if _curHighest!=0{
        with(_curHighest){
            Stats[? "Finalized_Hp"]=0//for servitors
            GameEvent_cardholders_AfterDamaged(id)
            Activate_Deathwish_Ability()
            GameEvent_cardholders_Death()
        }
        Points+=floor(_curHighestPt*1.5)
    }
}
for(i=0;i<ds_list_size(stid[? atkr.mysocket].Cardholderlist);i++){
    with(stid[? atkr.mysocket].Cardholderlist[| i]){
        if CardID!=0{
            GameEvent_cardholders_heal(15)
        }
    }
}
ds_map_destroy(MapStr)
