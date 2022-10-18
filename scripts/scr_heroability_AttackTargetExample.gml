///scr_heroability_RA3_PremierAnatolyIlychCherdenko()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid
if global.GameStage=GAMESTAGE.PLAYERTURNS{
if scr_ability_Checks_OnlyEnemy(vict,atkr){
    //run animation of ability
    var victimList=ds_list_create()
    ds_list_add(victimList,vict)
    ani_AttackSet_basic(atkr,victimList)
    ds_list_destroy(victimList)
    

    //Do Whatever here
    //...//
    
    
    //Ability alrdy done
    atkr.Stats[? "AbilityAlrdy"]=true
    atkr.Stats[? "AbilityCooldown"]=atkr.Stats[? "AbilityCooldownMax"]+1
    
    //remove from selected
    global.NetworkObj.IsHeroSelected=false
}
}
ds_map_destroy(MapStr)
