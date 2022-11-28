var MapStr=argument0;
var _isCompleted=true
if !is_undefined(MapStr[? "Pos"]){
with(MapStr[? "TgtCon"]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0 && !Stats[? "IsSpellsImmune"]{
                //deal damage
                if Stats[? "IsImmune"]=0 && Stats[? "IsSPImmune"]=0{
                    if Pos=MapStr[? "Pos"]{
                        Stats[? "Hp"]-=20*GetIntakeMultiplier(0,id)
                    }else{
                        Stats[? "Hp"]-=10*GetIntakeMultiplier(0,id)
                    }
                    player_con_CardholdersUpdateMultiStats()
                    Activate_AfterDamaged_Ability()
                    GameEvent_cardholders_AfterDamaged(id)
                }
            }
        }
    }
}
}


return _isCompleted
