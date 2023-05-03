///scr_ability_GenshinImpact_PyroSlime_Deathwish()
var MapStr=argument0;
var atkrobj=GetMultiStatsObject(Stats[? "LastAttackedBy"])
if atkrobj!=noone{
    var _con=global.NetworkObj.socket_to_instanceid[? atkrobj.mysocket]
    var victid=GetMultiStatsString(id)
    for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
        with(_con.Cardholderlist[| i]){
            if !Stats[? "IsAbilityImmune"]{
                var msDmg=Stats[? "Multi_BurnDmg"];
                var msDur=Stats[? "Multi_BurnDuration"];
                msDmg[? victid]=8
                msDur[? victid]=2
            }
        }
    }
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
