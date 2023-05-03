///IsMouseOverBattlefield()
var _r=false
with(global.NetworkObj){
    for(var i=0;i<ds_list_size(socketlist);i++){
        var _con=socket_to_instanceid[? socketlist[| i]]
        if _con.IsSpectating=false{
            var _x=_con.Homex
            var _y=_con.Homey
            if point_in_rectangle(mouse_x,mouse_y,
                _x-_con.BattlefieldWidth/2,
                _y-_con.BattlefieldHeight/2,
                _x+_con.BattlefieldWidth/2,
                _y+_con.BattlefieldHeight/2){
                _r=_con
            }
        }
    }
}

return _r
