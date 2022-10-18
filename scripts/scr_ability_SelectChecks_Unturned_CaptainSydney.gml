///scr_ability_SelectChecks_Unturned_CaptainSydney()
var _c=argument0
var _r=false
var _con=global.NetworkObj.socket_to_instanceid[? _c.mysocket]

if _con.Points>=20 && ds_list_size(_con.cardList)<(10+_con.Hero.Stats[? "ExtraHandCards"]){
if global.GameStage=GAMESTAGE.PLAYERTURNS{
    var _cardholders=_con.Cardholderlist
    for(var i=0;i<ds_list_size(_cardholders);i++){
        if _cardholders[| i].CardID!=0{
            _r=true
            break;
        }
    }
}
}

return _r
