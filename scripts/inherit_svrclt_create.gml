///inherit_svrclt_create()
TeamMap=ds_map_create()
ReadySocket=ds_list_create()
SelectedCardHolders=ds_list_create()
global.IsGame=false
enum GAMESTAGE{
    PLAYERTURNS,
    ATTACKINGTURN,
}
global.GameStage=GAMESTAGE.PLAYERTURNS
Turn=0
Turnstage[0]=0
