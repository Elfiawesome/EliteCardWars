///scr_ability_SouthPark_FrontierBradely_Warcry()
var MapStr=argument0;

var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
var _id = GetMultiStatsString(id)
for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
    if !IsBackUnit(i,_con.Cardholderlist){
        with(_con.Cardholderlist[| i]){
            var _mCA=Stats[? "Multi_Sweep_Atk"];
            _mCA[? _id]=true
            player_con_CardholdersUpdateMultiStats()
        }
    }
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
