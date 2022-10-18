///SummonHero(Obj,CardID)
with(argument0){
    CardID=argument1
    Stats[? "Base_Hp"]=global.HeroDat_Hp[CardID]
    Stats[? "Hp"]=Stats[? "Base_Hp"]
    Stats[? "Base_Atk"]=global.HeroDat_Atk[CardID]
    Stats[? "Atk"]=Stats[? "Base_Atk"]
    
    Stats[? "AbilityCooldown"]=global.HeroDat_CooldownMax[CardID]
    Stats[? "AbilityCooldownMax"]=global.HeroDat_CooldownMax[CardID]
}
