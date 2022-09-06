///scr_ability_PlantVsZombies_AstroVera_Warcry()
var MapStr=argument0;

//Increase Hero's max health by 5
with(global.NetworkObj.socket_to_instanceid[? mysocket].Hero){
    Stats[? "Base_Hp"]+=5
}

