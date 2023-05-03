///scr_campaign_con_tutorial_1
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
            ds_list_insert(con.GUIObjectOrder,0,id)
            IsNewBox=true
        }
    break;
    case 1://hi there
        IsDialogBox=true
        //box size
        DialogBox_w=650
        DialogBox_h=200
        DialogBox_curx=view_wport[0]/2-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Hi there and welcome to the tutorial!"
        
        con.CanEndTurn=false
        
        if IsContinueButton{
            TutorialStage=2
            IsNewBox=true
        }
    break;
    case 2://see herald?
        //box size
        DialogBox_w=670
        DialogBox_h=200
        DialogBox_curx=view_wport[0]/2-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="You see Herald there?"
        //highlight
        var BotHero=botcon.Hero
        if BotHero!=-1{
            var xscale=view_wport[0]/view_wview[0];
            var yscale=view_hport[0]/view_hview[0];
            //Line Highlight
            IsLineHighlight=true
            LineHighlight_x=(BotHero.x-view_xview[0])*xscale
            LineHighlight_y=(BotHero.y-view_yview[0]+sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            //Box Outline Highlight
            IsBoxOutlineHighlight=true
            BoxOutlineHighlight_x1=(BotHero.x-view_xview[0]-10-sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y1=(BotHero.y-view_yview[0]-10-sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            BoxOutlineHighlight_x2=(BotHero.x-view_xview[0]+10+sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y2=(BotHero.y-view_yview[0]+10+sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
        }
        //forcing camera movement
        view_xview[0]=lerp(view_xview[0],botcon.Homex-view_wview[0]/2,0.07)
        view_yview[0]=lerp(view_yview[0],botcon.Homey-view_hview[0]/2,0.07)
        
        if IsContinueButton{
            TutorialStage=3
            IsNewBox=true
        }
    break;
    case 3://DEstroy
        //box size
        DialogBox_w=670
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*1/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="We need to get [scary:3]DESTROY [d]it"
        
        //forcing camera movement
        var BotHero=botcon.Hero
        if BotHero!=-1{
            var xscale=view_wport[0]/view_wview[0];
            var yscale=view_hport[0]/view_hview[0];
            //Line Highlight
            IsLineHighlight=true
            LineHighlight_x=(BotHero.x-view_xview[0])*xscale
            LineHighlight_y=(BotHero.y-view_yview[0]+sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            //Box Outline Highlight
            IsBoxOutlineHighlight=true
            BoxOutlineHighlight_x1=(BotHero.x-view_xview[0]-15-sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y1=(BotHero.y-view_yview[0]-15-sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            BoxOutlineHighlight_x2=(BotHero.x-view_xview[0]+15+sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y2=(BotHero.y-view_yview[0]+15+sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            //force camera
            view_xview[0]=lerp(view_xview[0],BotHero.x-view_wview[0]/2,0.07)
            view_yview[0]=lerp(view_yview[0],BotHero.y-view_hview[0]/2,0.07)
        }
        if IsContinueButton{
            TutorialStage=4
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            ds_list_delete(con.GUIObjectOrder,ds_list_find_index(con.GUIObjectOrder,id))//should be at pos 0, but just to be safe
            temp_objref=con.GUIObjectOrder[| 0]
            IsNewBox=true
        }
    break;
    case 4://need draw cards
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*3/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="To do that, we need draw some cards"
        DialogBox_ClickHelp=false
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=view_wport[0]/3*1 - 0.4*sprite_get_width(spr_cardsback)/2-15
        BoxOutlineHighlight_y1=view_hport[0]/2   - 0.4*sprite_get_height(spr_cardsback)/2-15
        BoxOutlineHighlight_x2=view_wport[0]/3*1 + 0.4*sprite_get_width(spr_cardsback)/2+15
        BoxOutlineHighlight_y2=view_hport[0]/2   + 0.4*sprite_get_height(spr_cardsback)/2+15
        
        var _drawcon=temp_objref
        if ds_list_empty(con.GUIObjectOrder) || con.GUIObjectOrder[| 0] != _drawcon{
            TutorialStage=5
            IsBoxOutlineHighlight=false
            IsNewBox=true
            temp_dialogbox_continous="Press [Button:"+string(ColButton)+"]LSHIFT[d] to reopen the [keyword:"+string(ColMenuUI)+"]Draw Cards Tab"
            if _drawcon!=undefined && instance_exists(_drawcon) && _drawcon.Draws=1{
                temp_dialogbox_continous="Draw [scary:2]2[d] cards. Press [Button:"+string(ColButton)+"]LSHIFT[d] to return back to the [keyword:"+string(ColMenuUI)+"]Draw Cards Tab"
            }
        }
        if _drawcon!=undefined && instance_exists(_drawcon) && _drawcon.Draws<1{
            TutorialStage=6
            IsBoxOutlineHighlight=false
            temp_dialogbox_continous="Now we can summon these cards onto out battlefield"
            IsNewBox=true
        }
    break;
    case 5://you exited wrongly
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]/2-DialogBox_curw/2
        DialogBox_cury=view_hport[0]*1/4-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t=temp_dialogbox_continous
        DialogBox_ClickHelp=false
        
        var _drawcon=con.GUIObjectOrder[| 0]
        if _drawcon!=undefined && _drawcon.object_index=obj_carddrawer_control{
            temp_objref=_drawcon
            TutorialStage=4
            IsNewBox=true
        }
    break;
    case 6://select the card
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*4/5-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t=temp_dialogbox_continous
        DialogBox_ClickHelp=false
        
        var card=con.cardList
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        if !ds_list_empty(card) && instance_exists(card[| 0]){
            //Line Highlight
            IsLineHighlight=true
            LineHighlight_x=(card[| 0].x-view_xview[0])*xscale
            LineHighlight_y=(card[| 0].y-view_yview[0]-sprite_get_height(card[| 0].sprite_index)*card[| 0].image_yscale/2)*yscale
            //Box Outline Highlight
            IsBoxOutlineHighlight=true
            BoxOutlineHighlight_x1=(card[| 0].x-view_xview[0]-15-sprite_get_width(card[| 0].sprite_index)*card[| 0].image_xscale/2)*xscale
            BoxOutlineHighlight_y1=(card[| 0].y-view_yview[0]-15-sprite_get_height(card[| 0].sprite_index)*card[| 0].image_yscale/2)*yscale
            BoxOutlineHighlight_x2=(card[| 0].x-view_xview[0]+15+sprite_get_width(card[| 0].sprite_index)*card[| 0].image_xscale/2)*xscale
            BoxOutlineHighlight_y2=(card[| 0].y-view_yview[0]+15+sprite_get_height(card[| 0].sprite_index)*card[| 0].image_yscale/2)*yscale
        }
        
        if global.SelectedCard!=noone && ds_list_size(con.cardList)=2{
            TutorialStage=7
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
        }
        if global.SelectedCard!=noone && ds_list_size(con.cardList)=1{//lets try put an insufficent Pt card
            TutorialStage=8
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            Timer=60
            IsDialogBox=false
            IsNewBox=true
        }
    break;
    case 7://drop the card
        //box size
        DialogBox_w=450
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*3/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]*1/4-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Drop the card onto any of the slots in the battlefield"
        DialogBox_ClickHelp=false
        
        var cardholder=con.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){
            if cardholder[| i].CardID=0{pos=i;break;}
        }
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=(card.x-view_xview[0])*xscale
        LineHighlight_y=(card.y-view_yview[0])*yscale
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if global.SelectedCard=noone && ds_list_size(con.cardList)=2{
            TutorialStage=6
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            temp_dialogbox_continous="Drag the card and drop it onto any one of the slots here"
        }
        if global.SelectedCard=noone && ds_list_size(con.cardList)=1{
            TutorialStage=6
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            temp_dialogbox_continous="Let's summon another one!"
        }
    break;
    case 8://try put the 2nd card
        var cardholder=con.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){
            if cardholder[| i].CardID=0{pos=i;break;}
        }
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if Timer=0{
        if mouse_check_button_released(mb_left){
            if position_meeting(mouse_x,mouse_y,obj_cardholder){
            var _cardholder=instance_position(mouse_x,mouse_y,obj_cardholder)
                if con.mysocket=_cardholder.mysocket && _cardholder.CardID=0{
                    TutorialStage=9
                    IsBoxOutlineHighlight=false
                    IsNewBox=true
                    IsDialogBox=true
                    Timer=20
                }
            }
        }
        }
    break;
    case 9://tell its cuz there isnt enough point
        //box size
        DialogBox_w=550
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*3/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]*1/4-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="It seems you can't place this card because you don't have enough [keyword:"+string(ColPt)+"]Pt"
        
        var _x1=30;var _y1=80;var _x2=view_wport[0]/2;var _y2=_y1+40
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=_x2/2
        LineHighlight_y=_y2
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=_x1
        BoxOutlineHighlight_y1=_y1
        BoxOutlineHighlight_x2=_x2
        BoxOutlineHighlight_y2=_y2
        
        if Timer=0 && IsContinueButton{
            TutorialStage=10
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            Timer=50
        }
    break;
    case 10://tell the card is too ex
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*5/6-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="This card costs 3 [keyword:"+string(ColPt)+"]Pt[d], and we dont have enough [keyword:"+string(ColPt)+"]Pt[d] to summon it :<"
        
        var card=con.cardList
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        if !ds_list_empty(card) && instance_exists(card[| 0]){
            var _card=card[| 0]
            var _x1=_card.x-sprite_get_width(_card.sprite_index)*_card.image_xscale/2 + sprite_get_width(_card.sprite_index)*_card.image_xscale*(644/842)
            var _y1=_card.y-sprite_get_height(_card.sprite_index)*_card.image_yscale/2+ sprite_get_height(_card.sprite_index)*_card.image_yscale*(151/1272)
            var _x2=_card.x-sprite_get_width(_card.sprite_index)*_card.image_xscale/2 + sprite_get_width(_card.sprite_index)*_card.image_xscale*(758/842)
            var _y2=_card.y-sprite_get_height(_card.sprite_index)*_card.image_yscale/2+ sprite_get_height(_card.sprite_index)*_card.image_yscale*(280/1272)
            
            //Line Highlight
            IsLineHighlight=true
            LineHighlight_x=(_x1+(_x2-_x1) - view_xview[0])*xscale
            LineHighlight_y=(_y1+(_y2-_y1)/2 - view_yview[0])*yscale
            //Box Outline Highlight
            IsBoxOutlineHighlight=true
            BoxOutlineHighlight_x1=(_x1-view_xview[0])*xscale
            BoxOutlineHighlight_y1=(_y1-view_yview[0])*yscale
            BoxOutlineHighlight_x2=(_x2-view_xview[0])*xscale
            BoxOutlineHighlight_y2=(_y2-view_yview[0])*yscale
        }
        if Timer=0 && IsContinueButton{
            TutorialStage=11
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
        }
    break;
    case 11://ask to end turn
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*4/6-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Since there's nothing else for us to do, let's [wave:1]end our turn"
        DialogBox_ClickHelp=false
        
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=EndGameButtonx1
        LineHighlight_y=EndGameButtony1
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=EndGameButtonx1
        BoxOutlineHighlight_y1=EndGameButtony1
        BoxOutlineHighlight_x2=EndGameButtonx2
        BoxOutlineHighlight_y2=EndGameButtony2
        
        con.CanEndTurn=true
        if global.NetworkObj.Turnstage[global.NetworkObj.Turn]!=con.mysocket{
            TutorialStage=12
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            Timer=100
            con.CanEndTurn=false
        }
    break;
    case 12://Notice enemy
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*1/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]*3/4-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Our enemy just summoned a Zombie"
        
        var cardholder=botcon.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID!=0{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=(card.x-view_xview[0])*xscale
        LineHighlight_y=(card.y-view_yview[0])*yscale
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if Timer=0 && IsContinueButton{
            TutorialStage=13
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
        }
    break;
    case 13://CRUSH HIM
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*1/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]*3/4-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="[scary:2]LET CRUSH HIM"
        
        if IsContinueButton{
            TutorialStage=14
            IsNewBox=true
        }
    break;
    case 14://Selecting Cardholder
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*5/6-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Select your Card"
        DialogBox_ClickHelp=false
        
        var cardholder=con.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID!=0{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=(card.x-view_xview[0])*xscale
        LineHighlight_y=(card.y-view_yview[0])*yscale
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        var allatk=true
        var cardholder=con.Cardholderlist
        for(var i=0;i<ds_list_size(cardholder);i++){
        if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "AtkLeft"]>0{allatk=false;break;}
        }
        if !ds_list_empty(Server.SelectedCardHolders) || allatk{
            TutorialStage=15
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
        }
    break;
    case 15://attack the enemy
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*3/5-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Then Attack him!"
        DialogBox_ClickHelp=false
        
        var cardholder=botcon.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID!=0{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=(card.x-view_xview[0])*xscale
        LineHighlight_y=(card.y-view_yview[0])*yscale
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if ds_list_empty(Server.SelectedCardHolders){
            TutorialStage=14
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
        }
        var allatk=true
        var cardholder=con.Cardholderlist
        for(var i=0;i<ds_list_size(cardholder);i++){
            if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "AtkLeft"]>0{allatk=false;break;}
        }
        if allatk{
            TutorialStage=16
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            Timer=30
        }
    break;
    case 16://Show HP
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*1/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Look, the Zombie's HP went down"
        var cardholder=botcon.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "Finalized_Hp"]<1{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=(card.x-view_xview[0])*xscale
        LineHighlight_y=(card.y-view_yview[0])*yscale
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-30-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-30-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+30-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+30-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if Timer=0 && IsContinueButton{
            TutorialStage=17
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            Timer=30
        }
    break;
    case 17://Show ATK
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*3/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="On the right is the Zombie's ATK"
        var cardholder=botcon.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "Finalized_Hp"]<1{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=(card.x-view_xview[0])*xscale
        LineHighlight_y=(card.y-view_yview[0])*yscale
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]+30-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-30-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+90-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+30-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if Timer=0 && IsContinueButton{
            TutorialStage=20
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            Timer=30
        }
    break;
    case 20://Finish your attacking turn //end turn
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*4/6-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Since thats all our attack, lets end our turn"
        DialogBox_ClickHelp=false
        
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=EndGameButtonx1
        LineHighlight_y=EndGameButtony1
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=EndGameButtonx1
        BoxOutlineHighlight_y1=EndGameButtony1
        BoxOutlineHighlight_x2=EndGameButtonx2
        BoxOutlineHighlight_y2=EndGameButtony2
        
        con.CanEndTurn=true
        if global.NetworkObj.Turnstage[global.NetworkObj.Turn]!=con.mysocket{
            TutorialStage=21
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            con.CanEndTurn=false
            Timer=30
        }
    break;
    case 21:
        IsDialogBox=false
        if Timer=0 && global.NetworkObj.Turnstage[global.NetworkObj.Turn]!=con.mysocket && global.AnimatorSys[0].IsAnimatorEmpty{
            TutorialStage=22
            IsNewBox=true
        }
    break;
    case 22:
        IsDialogBox=true
        //box size
        DialogBox_w=450
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*3/4-DialogBox_curw/2
        DialogBox_cury=view_hport[0]*1/4-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Now that we have enough Points, let's summon our other Goblin"
        DialogBox_ClickHelp=false
        
        var cardholder=con.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID=0{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=(card.x-view_xview[0])*xscale
        LineHighlight_y=(card.y-view_yview[0])*yscale
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if ds_list_size(con.cardList)=0{
            TutorialStage=23
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
        }
    break;
    case 23://end turn
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*4/6-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Now we can end our turn"
        DialogBox_ClickHelp=false
        
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=EndGameButtonx1
        LineHighlight_y=EndGameButtony1
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=EndGameButtonx1
        BoxOutlineHighlight_y1=EndGameButtony1
        BoxOutlineHighlight_x2=EndGameButtonx2
        BoxOutlineHighlight_y2=EndGameButtony2
        
        con.CanEndTurn=true
        if global.NetworkObj.Turnstage[global.NetworkObj.Turn]!=con.mysocket{
            TutorialStage=24
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            con.CanEndTurn=false
        }
    break;
    case 24:
        IsDialogBox=true
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*5/6-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Let's attack his Zombie with this one first"
        DialogBox_ClickHelp=false
        
        var cardholder=con.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "AtkLeft"]>0{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=(card.x-view_xview[0])*xscale
        LineHighlight_y=(card.y-view_yview[0])*yscale
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if !ds_list_empty(Server.SelectedCardHolders){
            TutorialStage=25
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            IsDialogBox=false
        }
    break;
    case 25://attack again
        var cardholder=botcon.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID!=0{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        if ds_list_empty(Server.SelectedCardHolders){
            TutorialStage=24
            IsBoxOutlineHighlight=false
            IsNewBox=true
        }
        var atkcount=0//no of cards not yet attack
        var cardholder=con.Cardholderlist
        for(var i=0;i<ds_list_size(cardholder);i++){
            if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "AtkLeft"]>0{atkcount++}
        }
        if atkcount=1{
            TutorialStage=27
            IsBoxOutlineHighlight=false
            IsNewBox=true
            Timer=30
        }
    break;
    case 27:
        if global.AnimatorSys[0].IsAnimatorEmpty{
            TutorialStage=26
            Timer=70
            ds_list_insert(con.GUIObjectOrder,0,id)
        }
    break;
    case 26://Hero is open
        IsDialogBox=true
        //box size
        DialogBox_w=670
        DialogBox_h=200
        DialogBox_curx=view_wport[0]/2-DialogBox_curw/2
        DialogBox_cury=view_hport[0]*5/6-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Look, since there's no alive units defending him. His Hero is vulnerable!"
        //highlight
        var BotHero=botcon.Hero
        if BotHero!=-1{
            var xscale=view_wport[0]/view_wview[0];
            var yscale=view_hport[0]/view_hview[0];
            //Line Highlight
            IsLineHighlight=true
            LineHighlight_x=(BotHero.x-view_xview[0])*xscale
            LineHighlight_y=(BotHero.y-view_yview[0]+sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            //Box Outline Highlight
            IsBoxOutlineHighlight=true
            BoxOutlineHighlight_x1=(BotHero.x-view_xview[0]-10-sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y1=(BotHero.y-view_yview[0]-10-sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            BoxOutlineHighlight_x2=(BotHero.x-view_xview[0]+10+sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y2=(BotHero.y-view_yview[0]+10+sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            //forcing camera movement
            view_xview[0]=lerp(view_xview[0],BotHero.x-view_wview[0]/2,0.07)
            view_yview[0]=lerp(view_yview[0],BotHero.y-view_hview[0]/2,0.07)
        }
        
        if Timer=0 && IsContinueButton{
            TutorialStage=28
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            ds_list_delete(con.GUIObjectOrder,ds_list_find_index(con.GUIObjectOrder,id))
            IsDialogBox=false
        }
    break;
    case 28://Attack him!
        //highlight
        var BotHero=botcon.Hero
        if BotHero!=-1{
            var xscale=view_wport[0]/view_wview[0];
            var yscale=view_hport[0]/view_hview[0];
            //Box Outline Highlight
            IsBoxOutlineHighlight=true
            BoxOutlineHighlight_x1=(BotHero.x-view_xview[0]-10-sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y1=(BotHero.y-view_yview[0]-10-sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            BoxOutlineHighlight_x2=(BotHero.x-view_xview[0]+10+sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y2=(BotHero.y-view_yview[0]+10+sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
        }
        
        //if all attack alrdy
        var allatk=true
        var cardholder=con.Cardholderlist
        for(var i=0;i<ds_list_size(cardholder);i++){
            if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "AtkLeft"]>0{allatk=false;break;}
        }
        if botcon.Hero!=-1{
            if allatk && botcon.Hero.Stats[? "Hp"]<botcon.Hero.Stats[? "Base_Hp"]{
                TutorialStage=29
                IsLineHighlight=false
                IsBoxOutlineHighlight=false
                IsNewBox=true
                IsDialogBox=true
                Timer=30
                ds_list_insert(con.GUIObjectOrder,0,id)
            }
        }
    break;
    case 29:
        IsDialogBox=true
        //box size
        DialogBox_w=670
        DialogBox_h=200
        DialogBox_curx=view_wport[0]/2-DialogBox_curw/2
        DialogBox_cury=view_hport[0]*5/6-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Excellent! The Hero took 1 HRT Damage from you"
        
        var card=botcon.Hero
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        if card!=0{
            //Line Highlight
            IsLineHighlight=true
            LineHighlight_x=(card.x-view_xview[0])*xscale
            LineHighlight_y=(card.y-view_yview[0])*yscale
            //Box Outline Highlight
            IsBoxOutlineHighlight=true
            BoxOutlineHighlight_x1=(card.x-view_xview[0]-25-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
            BoxOutlineHighlight_y1=(card.y-view_yview[0]-25-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
            BoxOutlineHighlight_x2=(card.x-view_xview[0]+25-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
            BoxOutlineHighlight_y2=(card.y-view_yview[0]+25-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
            view_xview[0]=lerp(view_xview[0],card.x-view_wview[0]/2,0.07)
            view_yview[0]=lerp(view_yview[0],card.y-view_hview[0]/2,0.07)
        }
        
        if Timer=0 && IsContinueButton{
            TutorialStage=30
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            IsDialogBox=false
            ds_list_delete(con.GUIObjectOrder,ds_list_find_index(con.GUIObjectOrder,id))
        }
    break;
    case 30://end turn after attacking hero
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=EndGameButtonx1
        BoxOutlineHighlight_y1=EndGameButtony1
        BoxOutlineHighlight_x2=EndGameButtonx2
        BoxOutlineHighlight_y2=EndGameButtony2
        
        con.CanEndTurn=true
        if global.NetworkObj.Turnstage[global.NetworkObj.Turn]!=con.mysocket{
            TutorialStage=31
            IsBoxOutlineHighlight=false
            IsDialogBox=false
        }
    break;
    case 31:
        if global.NetworkObj.Turnstage[global.NetworkObj.Turn]=con.mysocket{
            TutorialStage=32
            IsBoxOutlineHighlight=false
            IsNewBox=true
            IsDialogBox=true
            con.CanEndTurn=true
        }
    break;
    case 32://end turn again since theres no cards to put down
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*4/6-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Let's do that again and [scary:3]FINISH him off"
        DialogBox_ClickHelp=false
        
        //Line Highlight
        IsLineHighlight=true
        LineHighlight_x=EndGameButtonx1
        LineHighlight_y=EndGameButtony1
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=EndGameButtonx1
        BoxOutlineHighlight_y1=EndGameButtony1
        BoxOutlineHighlight_x2=EndGameButtonx2
        BoxOutlineHighlight_y2=EndGameButtony2
        
        con.CanEndTurn=true
        if global.NetworkObj.Turnstage[global.NetworkObj.Turn]!=con.mysocket{
            TutorialStage=33
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            IsDialogBox=false
            con.CanEndTurn=false
        }
    break;
    case 33:
        var cardholder=botcon.Cardholderlist
        var pos=0
        for(var i=0;i<ds_list_size(cardholder);i++){if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "AtkLeft"]>0{pos=i;break;}}
        var card=cardholder[| pos]
        var xscale=view_wport[0]/view_wview[0];
        var yscale=view_hport[0]/view_hview[0];
        //Box Outline Highlight
        IsBoxOutlineHighlight=true
        BoxOutlineHighlight_x1=(card.x-view_xview[0]-15-sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y1=(card.y-view_yview[0]-15-sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        BoxOutlineHighlight_x2=(card.x-view_xview[0]+15+sprite_get_width(card.sprite_index)*card.image_xscale/2)*xscale
        BoxOutlineHighlight_y2=(card.y-view_yview[0]+15+sprite_get_height(card.sprite_index)*card.image_yscale/2)*yscale
        
        var atkcount=0
        var cardholder=con.Cardholderlist
        for(var i=0;i<ds_list_size(cardholder);i++){
            if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "AtkLeft"]=0{atkcount++}
        }
        if atkcount=1{
            TutorialStage=35
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
        }
        if atkcount=2{
            TutorialStage=34
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
        }
    break;
    case 34:
        //box size
        DialogBox_w=500
        DialogBox_h=200
        DialogBox_curx=view_wport[0]*4/6-DialogBox_curw/2
        DialogBox_cury=view_hport[0]/2-DialogBox_curh/2
        DialogBox_x=DialogBox_curx
        DialogBox_y=DialogBox_cury
        //box text
        DialogBox_t="Not sure how you got there but let's try that again"
        
        if IsContinueButton{
            TutorialStage=34
            IsLineHighlight=false
            IsBoxOutlineHighlight=false
            IsNewBox=true
            IsDialogBox=false
            var cardholder=con.Cardholderlist
            for(var i=0;i<ds_list_size(cardholder);i++){
                var _ch=cardholder[| i]
                if _ch.CardID!=0 && _ch.Stats[? "AtkLeft"]=0{
                    _ch.Stats[? "AtkLeft"]=_ch.Stats[? "AtkMax"]
                }
            }
        }
    break;
    case 35:
        var BotHero=botcon.Hero
        if BotHero!=-1{
            var xscale=view_wport[0]/view_wview[0];
            var yscale=view_hport[0]/view_hview[0];
            //Box Outline Highlight
            IsBoxOutlineHighlight=true
            BoxOutlineHighlight_x1=(BotHero.x-view_xview[0]-10-sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y1=(BotHero.y-view_yview[0]-10-sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
            BoxOutlineHighlight_x2=(BotHero.x-view_xview[0]+10+sprite_get_width(BotHero.sprite_index)*BotHero.image_xscale/2)*xscale
            BoxOutlineHighlight_y2=(BotHero.y-view_yview[0]+10+sprite_get_height(BotHero.sprite_index)*BotHero.image_yscale/2)*yscale
        }
        var allatk=true
        var cardholder=con.Cardholderlist
        for(var i=0;i<ds_list_size(cardholder);i++){
            if cardholder[| i].CardID!=0 && cardholder[| i].Stats[? "AtkLeft"]>0{allatk=false;break;}
        }
        if allatk{
            if BotHero!=-1 && BotHero.Stats[? "Hp"]<=0{
                TutorialStage=36
                IsLineHighlight=false
                IsBoxOutlineHighlight=false
                con.CanEndTurn=true
            }else{
                TutorialStage=34
                IsLineHighlight=false
                IsBoxOutlineHighlight=false
            }
        }
    break;
}



