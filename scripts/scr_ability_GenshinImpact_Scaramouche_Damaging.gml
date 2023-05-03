///scr_ability_GenshinImpact_Scaramouche_Damaging()
var MapStr=argument0;
var _id=GetMultiStatsString(id)
with(MapStr){
    if !Stats[? "IsAbilityImmune"]{
        var msDmg=Stats[? "Multi_PoisonDmg"];
        var msDur=Stats[? "Multi_PoisonDuration"];
        if ds_map_exists(msDmg,_id) && ds_map_exists(msDur,_id){
            msDmg[? _id]+=2
            msDur[? _id]=5
        }else{
            msDmg[? _id]=2
            msDur[? _id]=5
        }
        player_con_CardholdersUpdateMultiStats()
    }
}
