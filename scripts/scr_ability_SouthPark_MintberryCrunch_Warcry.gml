///scr_ability_SouthPark_MintberryCrunch_Warcry()
var MapStr=argument0;

var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
var _id = GetMultiStatsString(id)
for(var i=0;i<ds_list_size(_con.Cardholderlist);i++){
    if _con.Cardholderlist[| i]!=id{
        if global.UnitDat_ImmuneCapable[_con.Cardholderlist[| i].CardID]=false{
            with(_con.Cardholderlist[| i]){
                var _mii=Stats[? "Multi_IsImmune"];
                _mii[? _id]=1
                player_con_CardholdersUpdateMultiStats()
            }
        }
    }
}
