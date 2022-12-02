var MapStr=argument0;

///scr_ability_Raid_VaultOfGlass_Oracle_AfterDamaged
if Stats[? "Finalized_Hp"]<1{
    var _o=GetMultiStatsObject(Stats[? "AbilityConstantTarget"])
    if _o!=noone && instance_exists(_o){
        with(_o){
            //remove its immunity
            var _m=Stats[? "Multi_IsImmune"];
            ds_map_delete(_m,GetMultiStatsString(other.id))
            player_con_CardholdersUpdateMultiStats()
        }
    }
}
