///scr_ability_SouthPark_MrHankey_Warcry()
var MapStr=argument0;

var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
    with(_con.Cardholderlist[| i]){
        repeat(2){
            if Stats[? "AbilityCooldown"]!=0{Stats[? "AbilityCooldown"]-=1}
        }
    }
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
