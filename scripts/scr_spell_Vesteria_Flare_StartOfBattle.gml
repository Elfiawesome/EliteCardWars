///scr_spell_Vesteria_Flare_StartOfBattle()
var MapStr=argument0;
var _isCompleted=true
with(MapStr[? "TgtCon"]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0 && !Stats[? "IsSpellsImmune"]{
                //deal damage
                if Stats[? "IsImmune"]=0{
                    Stats[? "Hp"]-=5*GetIntakeMultiplier(0,id)
                    player_con_CardholdersUpdateMultiStats()
                    Activate_Damaged_Ability()
                    GameEvent_cardholders_AfterDamaged(id)
                }
            }
        }
    }
}
with(MapStr[? "Con"]){
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                GameEvent_cardholders_heal(5)
            }
        }
    }
}
return _isCompleted
