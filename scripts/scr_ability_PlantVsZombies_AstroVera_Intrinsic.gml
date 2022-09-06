///scr_ability_PlantVsZombies_AstroVera_Intrinsic()
var MapStr=argument0;

//Increase Hero's health by 1
with(global.NetworkObj.socket_to_instanceid[? mysocket].Hero){
    if Stats[? "Hp"]<Stats[? "Base_Hp"]{
        Stats[? "Hp"]++
    }
}

