with(global.NetworkObj.socket_to_instanceid[? global.NetworkObj.mysocket]){
    for(var i=0;i<ds_list_size(HandCards);i++){
        var _m=json_decode(HandCards[| i])
        if ds_map_exists(_m,"Locked"){
            if _m[? "Locked"] != 0{
                cardList[| i].Locked=true
            }else{
                cardList[| i].Locked=false
            }
        }
        ds_map_destroy(_m)
    }
}
