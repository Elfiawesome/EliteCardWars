///scr_MissionScript_Tutorial2
var _s=instance_create(0,0,obj_server)
with(_s){
GameSettings[? "IsMission"]=true
GameSettings[? "MissionID"]=MissionID.Tutorial2
GameSettings[? "Name"]=global.MissionDat_Name[GameSettings[? "MissionID"]]
GameSettings[? "MaxPlayers"]=2
var _inst=instance_create(100,100,obj_player_con);
_inst.name="Herald"
_inst.IsLocal=false
_inst.mysocket=BotCounterSocket;BotCounterSocket--
_inst.Team=1
_inst.IsBot=true
_inst.NonRemovableBot=true
_inst.PlayerHeroID=HeroID.Tutorial_Herald
ds_list_add(_inst.DeckList,UnitID.D2_Goblin)
ds_list_add(_inst.DeckList,UnitID.D2_Goblin)
ds_list_add(_inst.DeckList,UnitID.D2_Goblin)
ds_list_add(_inst.DeckList,UnitID.D2_Goblin)

_inst.AI_PlacingDownUnits=AIPlaceDownUnits_Easy
_inst.AI_SelectingVictims=AISelectVictim_Easy
_inst.PlayerHeroID=HeroID.Tutorial_Herald

socket_to_instanceid[? _inst.mysocket]=_inst
ds_list_add(socketlist,_inst.mysocket)

//set deck
var plyrcon=socket_to_instanceid[? 0]
with(plyrcon){
    PlayerHeroID=HeroID.Tutorial_Herald
    ds_list_clear(DeckList)
    ds_list_clear(SpellList)
    ds_list_add(DeckList,
    UnitID.D2_Goblin,
    )
}
}
var _tut=instance_create(0,0,obj_campaign_tutorial_con);
_tut.Server=_s
_tut.BotSocket=_inst.mysocket
_tut.TutorialScript=scr_campaign_con_tutorial_2
