///scr_heroability_CardWars_HackerPatrick_UnitSummoned(Summoned Object)
var MapStr=argument0
var _id=HeroGetMultiStatsString(id)
if MapStr.mysocket=mysocket{
    with(MapStr){
        var _mCA=Stats[? "Multi_CrossAtk"];
        _mCA[? _id]=true
        player_con_CardholdersUpdateMultiStats()
    }
}
