///scr_ability_D2_Hobgoblin()
var MapStr=argument0;

if Stats[? "AbilityCooldown"]=0{
    GameEvent_cardholders_heal(4)
    var _mii=Stats[? "Multi_IsImmune"];
    _mii[? string(id)]=1
    var _mii=Stats[? "Multi_IsFrozen"];
    _mii[? string(id)]=1
    Stats[? "AbilityCooldown"]=-1
    player_con_CardholdersUpdateMultiStats()
}
