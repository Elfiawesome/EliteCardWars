///GameEvent_cardholders_Clear
CardID=0
IsSelected=false
Stats[? "UnitsIdentifier"]=0
Stats[? "Base_Hp"]=0
Stats[? "Hp"]=0
ds_map_clear(Stats[? "Multi_OtherHpAmt"])
Stats[? "OtherHpAmt"]=0
ds_map_clear(Stats[? "Multi_OtherHpDuration"])
Stats[? "Finalized_Hp"]=0
Stats[? "Base_Atk"]=0
Stats[? "Atk"]=0
ds_map_clear(Stats[? "Multi_OtherAtkAmt"])
Stats[? "OtherAtkAmt"]=0
ds_map_clear(Stats[? "Multi_OtherAtkDuration"])
Stats[? "Finalized_Atk"]=0
ds_map_clear(Stats[? "Multi_DefAmt"])
ds_map_clear(Stats[? "Multi_DefDuration"])
Stats[? "Def"]=0
Stats[? "SplashAtk"]=0
Stats[? "Pt"]=0
Stats[? "AtkAlrdy"]=false
Stats[? "AbilityAlrdy"]=false
//attack types
ds_map_clear(Stats[? "Multi_CrossAtk"])
ds_map_clear(Stats[? "Multi_SpreadAtk"])
ds_map_clear(Stats[? "Multi_Sweep_Atk"])
ds_map_clear(Stats[? "Multi_Pierce_Atk"])
ds_map_clear(Stats[? "Multi_Splash_Atk"])
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
ds_map_clear(Stats[? "Multi_IsStatusEffectImmune"])
Stats[? "IsStatusEffectImmune"]=0
ds_map_clear(Stats[? "Multi_IsSpellsImmune"])
Stats[? "IsSpellsImmune"]=0
//status effects
ds_map_clear(Stats[? "Multi_BurnDmg"])
ds_map_clear(Stats[? "Multi_BurnDuration"])
Stats[? "BurnDmg"]=0
ds_map_clear(Stats[? "Multi_PoisonDmg"])
ds_map_clear(Stats[? "Multi_PoisonDuration"])
Stats[? "PoisonDmg"]=0

ds_map_clear(Stats[? "Multi_DamageIntakeMultiplierAmt"])
ds_map_clear(Stats[? "Multi_DamageIntakeMultiplierDur"])
Stats[? "DamageIntakeMultiplier"]=0
ds_map_clear(Stats[? "Multi_DamageOutputMultiplierAmt"])
ds_map_clear(Stats[? "Multi_DamageOutputMultiplierDur"])
Stats[? "DamageOutputMultiplier"]=0
//Spells
ds_list_clear(Stats[? "Spells"])

//Hidden stats
Stats[? "IsAbilityStun"]=false
Stats[? "AbilityLifespan"]=0
Stats[? "AbilityCooldown"]=0
Stats[? "AbilityCooldownMax"]=0
ds_list_clear(Stats[? "AbilitiesScript"])

Stats[? "AbilityConstantTarget"]=noone
Stats[? "LastAttackedBy"]=""
Stats[? "Lifespan"]=0



//if selected, remove selected
if ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,id)!=-1{
    ds_list_delete(global.NetworkObj.SelectedCardHolders_Ability,ds_list_find_index(global.NetworkObj.SelectedCardHolders_Ability,id))
}
IsSelected_Ability=false

