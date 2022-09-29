///scr_ability_PlantVsZombies_DoubledMint_Intrinsic()
var MapStr=argument0;

//Double health and atk [ONLY IF END OF TURN]
if Stats[? "Lifespan"]>0{
    Stats[? "Base_Hp"]+=Stats[? "Hp"]
    Stats[? "Base_Atk"]+=Stats[? "Atk"]
    Stats[? "Hp"]+=Stats[? "Hp"]
    Stats[? "Atk"]+=Stats[? "Atk"]
    //ability is completed
    Stats[? "AbilityAlrdy"]=true
}
