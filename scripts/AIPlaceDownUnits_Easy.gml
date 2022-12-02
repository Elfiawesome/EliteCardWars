///AIPlaceDownUnits_Easy()
var MainMap=ds_map_create()
var _priority=ds_priority_create()

//priotirizing which card in hand to put down
for(var ii=ds_list_size(HandCards)-1; ii>=0; ii--){
    var _cardCur=HandCards[| ii]
    var _m=json_decode(_cardCur)
    var _id=_m[? "ID"]
    ds_map_destroy(_m)
    
    var _val=(
        global.UnitDat_Hp[ _id]+
        global.UnitDat_Atk[ _id]
    )
    ds_priority_add(_priority,_cardCur,_val)
    show_debug_message("Priority Added for [Pr:"+string(_val)+","+"'"+string(_cardCur)+"']")
}

var _projectedcardholder=ds_list_create()
var _projectedPt=Points
while(!ds_priority_empty(_priority)){
    var _cardCur=ds_priority_find_max(_priority)
    var _m=json_decode(_cardCur)
    var _id=_m[? "ID"]
    ds_map_destroy(_m)
    
    //where to place it at?
    for(var i=0;i<ds_list_size(Cardholderlist);i++){
        var _ptval=GetPointDeductionValue(global.UnitDat_Pt[_id])
        if Cardholderlist[| i].CardID=0 && ds_list_find_index(_projectedcardholder,i)=-1 && _projectedPt>=_ptval{
            _projectedPt-=_ptval
            var _m=ds_map_create();
            _m[? "CardholderObj"]=Cardholderlist[| i]
            _m[? "CardID"]=_id
            _m[? "CardVal"]=_cardCur
            ds_map_add_map(MainMap,_cardCur,_m)
            ds_list_add(_projectedcardholder,i)
        }
    }
    ds_priority_delete_max(_priority)
}
ds_list_destroy(_projectedcardholder)


ds_priority_destroy(_priority)
return MainMap
