///scr_campaign_con_tutorial_2
var con=Server.socket_to_instanceid[? Server.mysocket]
var botcon=Server.socket_to_instanceid[? BotSocket]
var IsContinueButton=false
DialogBox_ClickHelp=true
if mouse_check_button_pressed(mb_left){IsContinueButton=true}
IsNewBox=false

switch(TutorialStage){
    case 0:
        if global.IsGame{
            TutorialStage=1
            IsNewBox=true
        }
    break;
    case 1:
    with(global.NetworkObj){
        svr_SummonCard(botcon.mysocket,0,UnitID.Unturned_Zombie)
        svr_SummonCard(botcon.mysocket,1,UnitID.Unturned_Zombie)
        svr_SummonCard(botcon.mysocket,2,UnitID.Unturned_Zombie)
        svr_SummonCard(botcon.mysocket,3,UnitID.SouthPark_Henrietta)
        
        
        with(botcon.Cardholderlist[| 3]){
            Stats[? "Atk"]=0
            player_con_CardholdersUpdateMultiStats()
        }
    }
    TutorialStage=2
    break;
    case 2:
        IsDialogBox=true
        //box size
        DialogBox_w=650
        DialogBox_h=200
        DialogBox_curx=view_wport[0]/2-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="It seems Herald was already prepeared"
        
        con.CanEndTurn=false
        if IsContinueButton{
            TutorialStage=3
            IsNewBox=true
            IsDialogBox=false
        }
    break;
}
