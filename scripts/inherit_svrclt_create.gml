///inherit_svrclt_create()
TeamMap=ds_map_create()
ReadySocket=ds_list_create()
SelectedCardHolders=ds_list_create()
IsHeroSelected=false
SelectedCardHolders_Ability=ds_list_create()
global.AnimatorSys[0]=instance_create(0,0,obj_animator_sys)
global.SpellSys=instance_create(0,0,obj_spells_sys)
global.IsGame=false
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

scr_units_init()
IsDebug=false
