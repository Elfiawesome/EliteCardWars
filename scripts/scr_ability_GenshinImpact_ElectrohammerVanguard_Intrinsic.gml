///scr_ability_GenshinImpact_ElectrohammerVanguard_Intrinsic()
var MapStr=argument0;

//Disable splash damage
if Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]{
    var _mSA=Stats[? "Multi_Splash_Atk"];
    _mSA[? GetMultiStatsString(id)]=false
    player_con_CardholdersUpdateMultiStats()
    Stats[? "SplashAtk"]=0
}
//Enable Splash Damage
if Stats[? "AbilityCooldown"]=0{
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
    
    //change splash attack
    var _mSA=Stats[? "Multi_Splash_Atk"];
    _mSA[? GetMultiStatsString(id)]=true
    player_con_CardholdersUpdateMultiStats()
    Stats[? "SplashAtk"]=Stats[? "Finalized_Atk"]*2
    
    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]
}
