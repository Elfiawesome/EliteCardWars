///create_AllCardHolders(TeamMap)
var TeamMap=argument0
var v_seperation=200
var h_seperation=view_wview[0]/3
var enemy_cntr=0
var player_cntr=0
//create card holders
for (var k=ds_map_find_first(TeamMap);!is_undefined(k);k=ds_map_find_next(TeamMap, k)){
    _l=ds_list_create()
    ds_list_read(_l,TeamMap[? k])
    for(var i=0;i<ds_list_size(_l);i++){
        var _con=socket_to_instanceid[? _l[| i]]
        var IsEnemy=true
        if real(socket_to_instanceid[? mysocket].Team)=real(_con.Team){IsEnemy=false}
        with(_con){
            if IsEnemy{
                Homex=view_wview[0]/2+h_seperation*enemy_cntr;enemy_cntr++
                Homey=-view_hview[0]/2+v_seperation
                create_cardholders(Homex,Homey,IsEnemy)
                var _hero=instance_create(Homex,Homey-400,obj_heroholder);
                _hero.mysocket=mysocket
                _hero.IsEnemy=IsEnemy
                Hero=_hero
                SummonHero(Hero,PlayerHeroID)
            }else{
                Homex=view_wview[0]/2+h_seperation*player_cntr;player_cntr++
                Homey=view_hview[0]/2-v_seperation
                create_cardholders(Homex,Homey,IsEnemy)
                var _hero=instance_create(Homex,Homey+400,obj_heroholder);
                _hero.mysocket=mysocket
                _hero.IsEnemy=IsEnemy
                Hero=_hero
                SummonHero(Hero,PlayerHeroID)
            }
            with(Hero){
                //Activate Intrinsic Hero Ability
                Activate_Intrinsic_HeroAbility()
            }
        }
    }
}
