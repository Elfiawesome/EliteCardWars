///scr_ability_Unturned_AcidZombie_Damaging()
var MapStr=argument0;
if Stats[? "AbilityCooldown"]=0{
var _id=GetMultiStatsString(id)
var _con=global.NetworkObj.socket_to_instanceid[? MapStr.mysocket]
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
        var msDmg=Stats[? "Multi_BurnDmg"];
        var msDur=Stats[? "Multi_BurnDuration"];
        msDmg[? _id]=5
        msDur[? _id]=2
        player_con_CardholdersUpdateMultiStats()
        }
    }
}
//reset cooldown
Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1
}
