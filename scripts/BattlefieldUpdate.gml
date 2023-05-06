///BattlefieldUpdate(string)
var _Mainmap=json_decode(argument0)
var _map=_Mainmap[? "Players"]
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
//update Identifiers
global.SpellsIdentifier=_Mainmap[? "SpellsIdentifier"]
global.UnitsIdentifier=_Mainmap[? "UnitsIdentifier"]
global.CardsIdentifier=_Mainmap[? "CardsIdentifier"]
//set turns
if Turn<array_length_1d(Turnstage){Turn=_Mainmap[? "Turn"]}
ds_map_destroy(_Mainmap)
