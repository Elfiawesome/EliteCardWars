///AttackHero(DatMap)
var AttackMapString=argument0;
var AttackMap=json_decode(AttackMapString);

//identifying object
var Victim_Map=AttackMap[? "Victim"]
var VictimObj=socket_to_instanceid[? real(Victim_Map[? "Socket"])].Hero

//identifying Attackers
var AttackingList=ds_list_create()
ds_list_read(AttackingList,AttackMap[? "AttackingList"])
var dmg=0
for(var i=0;i<ds_list_size(AttackingList);i++){
    var _m=json_decode(AttackingList[| i])
    var AttackObj=socket_to_instanceid[? real(_m[? "Socket"])].Cardholderlist[| real(_m[? "Pos"])];
    //deduction of health
    dmg+=AttackObj.Stats[? "Atk"];
    //animation
    var _list=ds_list_create()
    ds_list_add(_list,VictimObj)
    ani_AttackSet_basic(AttackObj,_list)
    ds_list_destroy(_list)
    
    //remove atkalrdy
    AttackObj.Stats[? "AtkAlrdy"]=true
    ds_map_destroy(_m)
}
//do damage
with(VictimObj){
    //do damage to hero
    VictimObj.Stats[? "Hp"]-=floor(dmg/10)
}
ds_list_destroy(AttackingList)

//delete Main AttackMap
ds_map_destroy(AttackMap)


