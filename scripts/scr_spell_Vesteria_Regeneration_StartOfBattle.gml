///scr_spell_Vesteria_Flare_StartOfBattle()
var MapStr=argument0;
var _isCompleted=false
with(MapStr[? "TgtCon"]){
    if MapStr[? "Lifespan"]=3{
        _isCompleted=true
    }
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        with(Cardholderlist[| i]){
            if CardID!=0{
                GameEvent_cardholders_heal(5)
            }
        }
    }
    MapStr[? "Lifespan"]++
}
return _isCompleted
