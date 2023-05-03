///craete_cardholders(orgin x, origin y, IsEnemy)
//create cardholders
if argument2{
var _Yoff=-1
}else{
var _Yoff=1
}
var totalcards=global.HeroDat_Slots[PlayerHeroID]+1
var totalfront=global.HeroDat_Slots[PlayerHeroID]-1

var cardsep=200
for(var i=1;i<totalcards;i++){
    var Width=500
    var midX=argument0-cardsep*(totalfront-1)/2 + (i-1)*(cardsep)
    var midY=argument1-140*_Yoff;
    if i=totalcards-1{
        midX=argument0
        midY=argument1+140*_Yoff
    }
    var _holder=instance_create(0,0,obj_cardholder);
    _holder.x=midX
    _holder.y=midY
    _holder.Homex=midX
    _holder.Homey=midY
    _holder.mysocket=mysocket
    _holder.IsEnemy=argument2
    _holder.Pos=i-1
    ds_list_add(Cardholderlist,_holder)
}

