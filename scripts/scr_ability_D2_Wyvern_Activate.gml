///scr_ability_D2_Wyvern_Activate()
var MapStr=argument0;

var atkr=MapStr[? "Attacker"]

with(atkr){
    var _mCA=Stats[? "Multi_CrossAtk"];
    var _mSwA=Stats[? "Multi_Sweep_Atk"];
    
    switch(ds_map_exists(_mCA,GetMultiStatsString(id))){
        case true:
            _mCA[? GetMultiStatsString(id)]=false
            _mSwA[? GetMultiStatsString(id)]=true
        break;
        case false:
            _mCA[? GetMultiStatsString(id)]=true
            _mSwA[? GetMultiStatsString(id)]=false
        break;
    }
    player_con_CardholdersUpdateMultiStats()
}
ds_map_destroy(MapStr)

