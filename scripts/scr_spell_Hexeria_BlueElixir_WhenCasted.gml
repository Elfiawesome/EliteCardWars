///scr_spell_Hexeria_BlueElixir_WhenCasted(Mapstr)
var MapStr=argument0;

if (Stats[? "Hp"]+20)<=Stats[? "Base_Hp"]{
    Stats[? "Hp"]+=20
}else{
    Stats[? "Hp"]+=(Stats[? "Base_Hp"]-Stats[? "Hp"])
}

