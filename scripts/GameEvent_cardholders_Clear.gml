///GameEvent_cardholders_Clear
CardID=0
IsSelected=false
Stats[? "Base_Hp"]=0
Stats[? "Hp"]=0
Stats[? "Base_Atk"]=0
Stats[? "Atk"]=0
Stats[? "Pt"]=0
Stats[? "AtkAlrdy"]=false
Stats[? "AbilityAlrdy"]=false
//attack types
Stats[? "CrossAtk"]=false
Stats[? "SpreadAtk"]=false
Stats[? "Sweep_Atk"]=false
Stats[? "Pierce_Atk"]=false
Stats[? "Sp_Atk"]=false
//Character states
ds_map_clear(Stats[? "Multi_IsFrozen"])
Stats[? "IsFrozen"]=0
ds_map_clear(Stats[? "Multi_IsImmune"])
Stats[? "IsImmune"]=0
ds_map_clear(Stats[? "Multi_IsSPImmune"])
Stats[? "IsSPImmune"]=0
ds_map_clear(Stats[? "Multi_IsBAImmune"])
Stats[? "IsBAImmune"]=0
//Spells
ds_list_clear(Stats[? "Spells"])

//Hidden stats
Stats[? "IsAbilityStun"]=false
Stats[? "AbilityLifespan"]=0
Stats[? "AbilityCooldown"]=0
Stats[? "AbilityCooldownMax"]=0

Stats[? "AbilityConstantTarget"]=noone
Stats[? "LastAttackedBy"]=noone
Stats[? "Lifespan"]=0
