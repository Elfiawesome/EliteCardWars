///scr_ability_SouthPark_YouthPastorCraig_Warcry()
var MapStr=argument0;

var _id=GetMultiStatsString(id)
var _con=global.NetworkObj.socket_to_instanceid[? mysocket]

for(var i=0;i<ds_list_size(global.NetworkObj.socketlist);i++){
    var _sock=global.NetworkObj.socketlist[| i]
    var _c=global.NetworkObj.socket_to_instanceid[? _sock]
    if _c!=_con{
        with(_c.Hero){
            _m=Stats[? "Multi_DisableSpells"]
            _m[? _id]=3
            player_con_HeroUpdateMultiStats()
        }
    }
}
//ability is completed
Stats[? "AbilityAlrdy"]=true
