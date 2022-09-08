///scr_ability_PlantVsZombies_MagnifyingGrass_Warcry()
var MapStr=argument0;

//DBecome random unit after 1 round
if Stats[? "Lifespan"]>0{
    //finding what cards are available
    var possibleList=ds_list_create()
    for(i=1;i<UnitID.UnitID_MAX;i++){
        if global.UnitDat_Pt[i]<=6 && i!=CardID{
            ds_list_add(possibleList,i)
        }
    }
    ds_list_shuffle(possibleList)
    selection=possibleList[| 0]
    ds_list_destroy(possibleList)
    
    //this is very jank :/
    GameEvent_cardholders_Transform(selection)
    if global.NetworkObj=obj_server{
        svr_ForceBattlefieldUpdate()
    }
}

