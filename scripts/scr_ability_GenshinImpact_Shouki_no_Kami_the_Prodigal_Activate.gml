///scr_ability_GenshinImpact_Shouki_no_Kami_the_Prodigal_Activate()
var MapStr=argument0;

var atkr=MapStr[? "Attacker"]
var _atkrcon=global.NetworkObj.socket_to_instanceid[? atkr.mysocket]
var VictList=ds_list_create()
for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _con=global.NetworkObj.socket_to_instanceid[? global.NetworkObj.socketlist[| i]]
    with(_con){
        if Team!=_atkrcon.Team{//enemy team
            for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
                if Cardholderlist[| ii].CardID!=0{
                    var _dmg=40
                    if Cardholderlist[| ii].Stats[? "IsAbilityImmune"]{_dmg=0}
                    GameEvent_cardholders_DealDamageAmt(Cardholderlist[| ii],atkr,_dmg)
                    GameEvent_cardholders_AfterDamaged(Cardholderlist[| ii])
                    //damage numbers
                    var _m=ds_map_create();
                    _m[? "Object"]=Cardholderlist[| ii]
                    _m[? "DamageNumber"]=FindDamageAmount(_dmg,atkr,Cardholderlist[| ii])
                    ds_list_add(VictList,_m)
                    ds_list_mark_as_map(VictList,ds_list_size(VictList)-1)
                }
            }
        }
    }
}
with(atkr){
    Stats[? "AbilityAlrdy"]=true
    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]+1
}
if !ds_list_empty(VictList){
    ani_AttackSet_ShoukinoKami(atkr,VictList)
}
ds_list_destroy(VictList)
ds_map_destroy(MapStr)
