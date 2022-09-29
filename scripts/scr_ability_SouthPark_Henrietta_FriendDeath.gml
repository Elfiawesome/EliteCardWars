///scr_ability_SouthPark_Henrietta_FriendDeath()
var MapStr=argument0;

if Stats[? "Finalized_Hp"]>0{
with(MapStr){
    //Activate Deathwish Ability
    if Stats[? "Finalized_Hp"]<1{
        Activate_Deathwish_Ability()
    }
    var _cid=CardID
    GameEvent_cardholders_Clear()
    SummonCard(id,_cid)
}
Stats[? "Hp"]-=clamp(
    floor(Stats[? "Base_Hp"]/4),0,Stats[? "Hp"]-1
)
}
