///scr_spell_SouthPark_UnholyCombustion_StartOfBattle()
var MapStr=argument0;
var _isCompleted=true
if !is_undefined(MapStr[? "Pos"]){
with(MapStr[? "TgtCon"]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0 && !Stats[? "IsSpellsImmune"]{
                //deal damage
                if Pos=MapStr[? "Pos"]{
                    Stats[? "Hp"]-=Stats[? "Hp"]*2
                }else{
                    if Stats[? "IsImmune"]=0 && Stats[? "IsSPImmune"]=0{
                        Stats[? "Hp"]-=10*GetIntakeMultiplier(0,id)
                    }
                }
                player_con_CardholdersUpdateMultiStats()
                Activate_AfterDamaged_Ability()
            }
        }
    }
}
}

return _isCompleted
