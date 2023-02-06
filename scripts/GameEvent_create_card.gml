///GameEvent_create_card(CardID,Type)
var _card=instance_create(0,0,obj_card);
var xMid=view_wport[0]/2;
var yMid=view_hport[0]*1.3;
var HorRad=view_wport[0]*0.5;
var VerRad=view_hport[0]*0.4;
_card.CardID=argument0
_card.CardType=argument1
ds_list_add(cardList,_card)
//reorganize hand cards
for(var i=0;i<ds_list_size(cardList);i+=1){
    angle=pi/2+degtorad(10 / clamp((ds_list_size(cardList)/20)*2,1,30))*(ds_list_size(cardList)/2-i)
    cardList[| i].Homex=xMid+(HorRad*cos(angle))
    cardList[| i].Homey=yMid-(VerRad*sin(angle))    
    cardList[| i].CardPos=i
    cardList[| i].HomeDepth=-1-1/i
}
return _card
