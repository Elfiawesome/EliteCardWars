///scr_ability_SouthPark_Firkle_Deathwish()
var MapStr=argument0;

//all allies +5Atk
var _con=global.NetworkObj.socket_to_instanceid[? mysocket];
for(i=0;i<ds_list_size(_con.Cardholderlist);i++){
    var _holder=_con.Cardholderlist[| i]
    with(_holder){
        Stats[? "Atk"]+=5
    }
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
