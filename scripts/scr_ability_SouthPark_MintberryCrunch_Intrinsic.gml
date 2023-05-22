///scr_ability_SouthPark_MintberryCrunch_Intrinsic()
var MapStr=argument0;

if Stats[? "Finalized_Hp"]>0{
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
var _id = GetMultiStatsString(id)
for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
    if _con.Cardholderlist[| i]!=id{
        if global.UnitDat_ImmuneCapable[_con.Cardholderlist[| i].CardID]=false{
            with(_con.Cardholderlist[| i]){
                GameEvent_cardholders_heal(6)
            }
        }
    }
}
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
