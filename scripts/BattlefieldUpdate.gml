///BattlefieldUpdate(string)
var _map=json_decode(argument0)

for(var k=ds_map_find_first(_map);!is_undefined(k);k=ds_map_find_next(_map,k)){
    var _sockmap = _map[? k];
    var _con=socket_to_instanceid[? real(k)];
    
    //control object
    _con.Points=_sockmap[? "Points"]
    
    //cardholders
    var cardholderslist=_sockmap[? "Cardholders"]
    for(var l=ds_map_find_first(cardholderslist);!is_undefined(l);l=ds_map_find_next(cardholderslist,l)){
        var NewStats=cardholderslist[? l];
        var _cardholderObj=_con.Cardholderlist[| real(l)];///get controller's cardholder list
        _cardholderObj.CardID=NewStats[? "CardID"]
        ds_map_delete(NewStats,"CardID")
        ds_map_destroy(_cardholderObj.Stats)
        //_cardholderObj.Stats = ds_map_create()
        //ds_map_copy(_cardholderObj.Stats,NewStats)
        var json = json_encode(NewStats);
        _cardholderObj.Stats = json_decode(json);
    }
}
ds_map_destroy(_map)
