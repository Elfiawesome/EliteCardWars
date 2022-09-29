///scr_ability_SelectChecks_FutureTankX1()
var _c=argument0
var _r=false

if global.GameStage=GAMESTAGE.ATTACKINGTURN{
    if _c.Stats[? "AtkAlrdy"]=false{
        _r=true
    }
}

return _r
