///SummonCard(obj,cardID)
with(argument0){
    CardID=argument1
    Stats[? "Base_Hp"]=global.UnitDat_Hp[CardID]
    Stats[? "Hp"]=Stats[? "Base_Hp"]
    Stats[? "Base_Atk"]=global.UnitDat_Atk[CardID]
    Stats[? "Atk"]=Stats[? "Base_Atk"]
    
    Stats[? "CrossAtk"]=global.UnitDat_AttackType[CardID,UnitAttackType.CrossAtk]
    Stats[? "SpreadAtk"]=global.UnitDat_AttackType[CardID,UnitAttackType.SpreadAtk]
    Stats[? "Sweep_Atk"]=global.UnitDat_AttackType[CardID,UnitAttackType.Sweep_Atk]
    Stats[? "Pierce_Atk"]=global.UnitDat_AttackType[CardID,UnitAttackType.Pierce_Atk]
    
    //Activate Intrinsic Ability
    if Stats[? "IsAbilityStun"]=false{
        if IsAbilityTrigger(CardID,AbilityTrigger.Intrinsic)!=-1{
            var _no=IsAbilityTrigger(CardID,AbilityTrigger.Intrinsic)
            script_execute(global.UnitDat_AbilityScript[CardID,_no],"")
        }
    }
}
