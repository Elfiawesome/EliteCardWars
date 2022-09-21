///GameEvent_cardholders_heal(healed amt)
if (Stats[? "Hp"]+argument0)<=Stats[? "Base_Hp"]{
    Stats[? "Hp"]+=argument0
}else{
    Stats[? "Hp"]+=(Stats[? "Base_Hp"]-Stats[? "Hp"])
}
player_con_CardholdersUpdateMultiStats()
