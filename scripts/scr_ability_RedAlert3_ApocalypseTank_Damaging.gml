///scr_ability_RedAlert3_ApocalypseTank_Damaging()
var MapStr=argument0;
with(MapStr){
    if Pos=other.Pos{
    if Pos!=3{
        Stats[? "Hp"]-=(other.Stats[? "Finalized_Atk"]/2)
    }
    }
}
