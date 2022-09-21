///scr_ability_SouthPark_CaptainDiabetes_Intrinsic()
var MapStr=argument0;

//Double health and atk [ONLY IF END OF TURN]
if Stats[? "AbilityCooldown"]=0{
    if ds_map_exists(Stats[? "Multi_OtherAtkAmt"],"CaptainDiabetes_SpecialSauce"){
        Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]
        exit;
    }
    
    var _ota=Stats[? "Multi_OtherAtkAmt"];
    var _otd=Stats[? "Multi_OtherAtkDuration"];
    if !ds_map_exists(_otd,"CaptainDiabetes_SpecialSauce"){
        _ota[? "CaptainDiabetes_SpecialSauce"]=Stats[? "Finalized_Atk"]
        _otd[? "CaptainDiabetes_SpecialSauce"]=3
    }
    var _ota=Stats[? "Multi_OtherHpAmt"];
    var _otd=Stats[? "Multi_OtherHpDuration"];
    if !ds_map_exists(_otd,id){
        _ota[? "CaptainDiabetes_SpecialSauce"]=Stats[? "Finalized_Hp"]
        _otd[? "CaptainDiabetes_SpecialSauce"]=3
    }
    player_con_CardholdersUpdateMultiStats()
    Stats[? "AbilityCooldown"]=Stats[? "AbilityCooldownMax"]
}




