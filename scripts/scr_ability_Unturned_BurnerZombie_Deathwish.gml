///scr_ability_Unturned_BurnerZombie_Deathwish()
var MapStr=argument0;
var atkr=id
var _id=GetMultiStatsString(id)

for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _con=global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]
    if global.NetworkObj.socketlist[| i]!=mysocket{
    with(_con){
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            with(Cardholderlist[| ii]){
                if Pos!=3{
                    var msDmg=Stats[? "Multi_BurnDmg"];
                    var msDur=Stats[? "Multi_BurnDuration"];
                    msDmg[? _id]=5
                    msDur[? _id]=3//dont need playerconupdate script since DealDamageAmt does that already [look below]
                    player_con_CardholdersUpdateMultiStats()
                }
                GameEvent_cardholders_DealDamageAmt(id,atkr,5)
            }
        }
    }
    }
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
