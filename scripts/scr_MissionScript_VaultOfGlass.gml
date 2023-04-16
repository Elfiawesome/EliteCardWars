///scr_MissionScript_VaultOfGlass
var _s=instance_create(0,0,obj_server)
with(_s){
GameSettings[? "IsMission"]=true
GameSettings[? "MissionID"]=MissionID.VaultOfGlass
GameSettings[? "Name"]="Atheon Time's Conflux Raid"
var _conter=1
repeat(3){
var _inst=instance_create(100,100,obj_player_con);
_inst.name="Vault Of Glass"
_inst.IsLocal=false
_inst.mysocket=BotCounterSocket;BotCounterSocket--
_inst.Team=2
_inst.IsBot=true
_inst.IsRaidBoss=true
_inst.RaidBotIdentifier=_conter;_conter++
_inst.NonRemovableBot=true
repeat(7){
ds_list_add(_inst.DeckList,
    UnitID.D2_Hobgoblin,
    UnitID.D2_Harpy,
    UnitID.D2_Goblin,UnitID.D2_Goblin,
    UnitID.D2_Wyvern,
)
}
ds_list_shuffle(_inst.DeckList)

_inst.AI_PlacingDownUnits=AIPlaceDownUnits_Raid_VaultOfGlass_Hero
_inst.AI_SelectingVictims=AISelectVictim_Easy

_inst.PlayerHeroID=HeroID.Raid_VaultOfGlass_Hero
socket_to_instanceid[? _inst.mysocket]=_inst
ds_list_add(socketlist,_inst.mysocket)

}
}
