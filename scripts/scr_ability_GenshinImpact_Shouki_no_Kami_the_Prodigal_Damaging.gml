///scr_ability_GenshinImpact_Shouki_no_Kami_the_Prodigal_Damaging()
var MapStr=argument0;
var _id=GetMultiStatsString(id)
with(MapStr){
    if !Stats[? "IsAbilityImmune"]{
        var msDmg=Stats[? "Multi_PoisonDmg"];
        var msDur=Stats[? "Multi_PoisonDuration"];
        msDmg[? _id]=6
        msDur[? _id]=5
        var msDmg=Stats[? "Multi_BurnDmg"];
        var msDur=Stats[? "Multi_BurnDuration"];
        msDmg[? _id]=6
        msDur[? _id]=5
        var _mif=Stats[? "Multi_IsFrozen"];
        _mif[? _id]=1
        player_con_CardholdersUpdateMultiStats()
    }
}

/*var _con=global.NetworkObj.socket_to_instanceid[? MapStr.mysocket]
with(_con){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            var msDmg=Stats[? "Multi_PoisonDmg"];
            var msDur=Stats[? "Multi_PoisonDuration"];
            msDmg[? _id]=6
            msDur[? _id]=5
            var msDmg=Stats[? "Multi_BurnDmg"];
            var msDur=Stats[? "Multi_BurnDuration"];
            msDmg[? _id]=6
            msDur[? _id]=5
            player_con_CardholdersUpdateMultiStats()
        }
    }
}

