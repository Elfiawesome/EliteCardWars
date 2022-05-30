///SummonCard(obj,cardID)
with(argument0){
    CardID=argument1
    Stats[? "Base_Hp"]=global.UnitDat_Hp[CardID]
    Stats[? "Hp"]=Stats[? "Base_Hp"]
    Stats[? "Base_Atk"]=global.UnitDat_Atk[CardID]
    Stats[? "Atk"]=Stats[? "Base_Atk"]
}
