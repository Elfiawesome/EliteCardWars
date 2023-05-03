///scr_ability_RedAlert3_ApocalypseTank_Damaging()
var MapStr=argument0;
with(MapStr){
if !Stats[? "IsAbilityImmune"]{
    if Pos=other.Pos{
        if !IsBackUnit(Pos,global.NetworkObj.socket_to_instanceid[? mysocket].Cardholderlist){
            Stats[? "Hp"]-=ceil(other.Stats[? "Finalized_Atk"]/2)*GetIntakeMultiplier(other.id,id)
            player_con_CardholdersUpdateMultiStats()
        }
    }
}
}
