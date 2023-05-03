///create_AllCardHolders(TeamMap)
var TeamMap=argument0
var v_seperation=200
var _totalEnemyWid=0
var _totalPlayerWid=0

var _n=0
for (var k=ds_map_find_first(TeamMap);!is_undefined(k);k=ds_map_find_next(TeamMap,k)){
    _l=ds_list_create()
    ds_list_read(_l,TeamMap[? k])
    for(var i=0;i<ds_list_size(_l);i++){
        var _con=socket_to_instanceid[? _l[| i]]
        var h_seperation=(global.HeroDat_Slots[_con.PlayerHeroID]-1)*200
        if real(socket_to_instanceid[? mysocket].Team)!=real(_con.Team){
            _totalEnemyWid+=h_seperation
        }else{
            _totalPlayerWid+=h_seperation
        }
    }
    ds_list_destroy(_l)
}
//create card holders
//var enemy_cntr=0
//var player_cntr=0
var current_enemy_h=0
var current_player_h=0
var HasSetMinMaxVal=false
for (var k=ds_map_find_first(TeamMap);!is_undefined(k);k=ds_map_find_next(TeamMap, k)){
    _l=ds_list_create()
    ds_list_read(_l,TeamMap[? k])
    for(var i=0;i<ds_list_size(_l);i++){
        var _con=socket_to_instanceid[? _l[| i]]
        var h_seperation=(global.HeroDat_Slots[_con.PlayerHeroID]-1)*200
        var IsEnemy=true
        if real(socket_to_instanceid[? mysocket].Team)=real(_con.Team){IsEnemy=false}
        with(_con){
            _con.BattlefieldWidth=h_seperation
            _con.BattlefieldHeight=600
            if IsEnemy{
                Homex=view_wview[0]/2-_totalEnemyWid/2+current_enemy_h+h_seperation/2;current_enemy_h+=h_seperation
                Homey=-view_hview[0]/2+v_seperation
                create_cardholders(Homex,Homey,IsEnemy)
                var _hero=instance_create(Homex,Homey-400,obj_heroholder);
                _hero.mysocket=mysocket
                _hero.IsEnemy=IsEnemy
                _hero.Homex=Homex
                _hero.Homey=Homey-400
                Hero=_hero
                SummonHero(Hero,PlayerHeroID)
            }else{
                Homex=view_wview[0]/2-_totalPlayerWid/2+current_player_h+h_seperation/2;current_player_h+=h_seperation
                Homey=view_hview[0]/2-v_seperation
                create_cardholders(Homex,Homey,IsEnemy)
                var _hero=instance_create(Homex,Homey+400,obj_heroholder);
                _hero.mysocket=mysocket
                _hero.IsEnemy=IsEnemy
                _hero.Homex=Homex
                _hero.Homey=Homey+400
                Hero=_hero
                SummonHero(Hero,PlayerHeroID)
            }
        }
        //set camera max [Still does not work perfectly] [sike it does now]
        if !HasSetMinMaxVal{
            HasSetMinMaxVal=true
            MinCamX=_con.Homex
            MaxCamX=_con.Homey
            MinCamY=_con.Homex
            MaxCamY=_con.Homey
        }
        if (_con.Homex-h_seperation/2)<MinCamX{MinCamX=_con.Homex-h_seperation/2}
        if (_con.Homex+h_seperation/2)>MaxCamX{MaxCamX=_con.Homex+h_seperation/2}
        if (_hero.y)<MinCamY{MinCamY=_hero.y}
        if (_hero.y)>MaxCamY{MaxCamY=_hero.y}
    }
    ds_list_destroy(_l)
}
//Activate Hero's ability
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        with(Hero){
            //Activate Intrinsic Hero Ability
            Activate_Intrinsic_HeroAbility()
            //Activate Warcry Hero Ability
            Activate_Warcry_HeroAbility()
        }
    }
}
