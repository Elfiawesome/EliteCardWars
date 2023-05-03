///scr_ability_GenshinImpact_ElectrohammerVanguard_Damaging()
var MapStr=argument0;

if Stats[? "AbilityCooldown"]=0{
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
    var atkr=id
    var vict=MapStr
    var victcon=global.NetworkObj.socket_to_instanceid[? vict.mysocket]
    for(var i=0;i<ds_list_size(victcon.Cardholderlist);i++){
        if vict!=victcon.Cardholderlist[| i]{
            with(victcon.Cardholderlist[| i]){
                var _dmg=atkr.Stats[? "Finalized_Atk"]*2
                if Stats[? "IsAbilityImmune"]{_dmg=0}
                GameEvent_cardholders_DealDamageAmt(id,atkr,_dmg)
                GameEvent_cardholders_AfterDamaged(id)
            }
        }
    }
    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]
}
