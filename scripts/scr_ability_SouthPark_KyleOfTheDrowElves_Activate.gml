///scr_ability_SouthPark_KyleOfTheDrowElves_Activate()
var MapStr=argument0;

var atkr=MapStr[? "Attacker"]
var _con=global.NetworkObj.socket_to_instanceid[? atkr.mysocket]
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        if Cardholderlist[| i]!=atkr{
            if global.UnitDat_ImmuneCapable[Cardholderlist[| i].CardID]=false{
            with(Cardholderlist[| i]){
                var _mii=Stats[? "Multi_IsImmune"];
                _mii[? GetMultiStatsString(atkr)]=1
                player_con_CardholdersUpdateMultiStats()
            }
            }
        }else{
            with(Cardholderlist[| i]){
                Stats[? "AbilityAlrdy"]=true
                Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1
            }
        }
    }
}
ds_map_destroy(MapStr)
