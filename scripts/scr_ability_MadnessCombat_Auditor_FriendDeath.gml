///scr_ability_MadnessCombat_Auditor_FriendDeath()
var MapStr=argument0;

Stats[? "Hp"]+=5
Stats[? "Base_Hp"]+=5
Stats[? "Atk"]+=5
Stats[? "Base_Atk"]+=5
player_con_CardholdersUpdateMultiStats()

//ability is completed
Stats[? "AbilityAlrdy"]=true
