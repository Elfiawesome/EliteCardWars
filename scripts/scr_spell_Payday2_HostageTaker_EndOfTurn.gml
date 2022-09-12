var MapStr=argument0;

var _amt=ceil(Stats[? "Base_Hp"]/4)
if (Stats[? "Hp"]+_amt)<=Stats[? "Base_Hp"]{
    Stats[? "Hp"]+=_amt
}else{
    Stats[? "Hp"]=Stats[? "Base_Hp"]
}

