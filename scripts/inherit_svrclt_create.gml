///inherit_svrclt_create()
TeamMap=ds_map_create()
ReadySocket=ds_list_create()
SelectedCardHolders=ds_list_create()
IsHeroSelected=false
SelectedCardHolders_Ability=ds_list_create()
global.GameMoveLog=ds_list_create()
global.AnimatorSys[0]=instance_create(0,0,obj_animator_sys)
global.SpellSys=instance_create(0,0,obj_spells_sys)
global.IsGame=false
global.SpellsIdentifier=0
global.UnitsIdentifier=0
global.CardsIdentifier=0
GameWinner=-1
enum GAMESTAGE{
    PLAYERTURNS,
    STARTOFATTACKINGTURN,
    ATTACKINGTURN,
}
global.GameStage=GAMESTAGE.PLAYERTURNS
Turn=0
Turnstage[0]=0
GameLifespan=0
//Game settings
GameSettings=ds_map_create();
GameSettings[? "Name"]=global.PlayerOnlineName+string("'s Server")
GameSettings[? "IsMission"]=false
GameSettings[? "MaxPlayers"]=10
//camera dragging
CameraIsDrag=false
CameraXoffsetStart=0
CameraYoffsetStart=0
CameraXoffset=0
CameraYoffset=0
TgtViewWidth=view_wview[0]
TgtViewHeight=view_hview[0]
MinCamX=0
MaxCamX=0
MinCamY=0
MaxCamY=0
//units
scr_units_init()
IsDebug=false
