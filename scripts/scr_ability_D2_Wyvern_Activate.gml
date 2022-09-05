///scr_ability_D2_Wyvern_Activate()
var MapStr=argument0;

var atkr=MapStr[? "Attacker"]


with(atkr){
    switch(Stats[? "CrossAtk"]){
        case true:
            Stats[? "CrossAtk"]=false
            Stats[? "Sweep_Atk"]=true
        break;
        case false:
            Stats[? "CrossAtk"]=true
            Stats[? "Sweep_Atk"]=false
        break;
    }
}
ds_map_destroy(MapStr)

