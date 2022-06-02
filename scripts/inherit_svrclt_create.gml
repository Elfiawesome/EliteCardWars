///inherit_svrclt_create()
TeamMap=ds_map_create()
ReadySocket=ds_list_create()
SelectedCardHolders=ds_list_create()
global.AnimatorSys[0]=instance_create(0,0,obj_animator_sys)
global.IsGame=false
enum GAMESTAGE{
    PLAYERTURNS,
    ATTACKINGTURN,
}
global.GameStage=GAMESTAGE.PLAYERTURNS
Turn=0
Turnstage[0]=0
