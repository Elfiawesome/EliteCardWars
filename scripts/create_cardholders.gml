///craete_cardholders(orgin x, origin y, IsEnemy)
//create cardholders
if argument2{
var _Yoff=-1
}else{
var _Yoff=1
}
for(var i=1;i<5;i++){
    var Width=500
    var midX=argument0-Width/2+(i-1)*Width/2;
    var midY=argument1-140*_Yoff;
    if i=4{
        midX=argument0
        midY=argument1+140*_Yoff
    }
    var _holder=instance_create(0,0,obj_cardholder);
    _holder.x=midX
    _holder.y=midY
    _holder.mysocket=mysocket
    _holder.IsEnemy=argument2
    _holder.Pos=i-1
    ds_list_add(Cardholderlist,_holder)
}

