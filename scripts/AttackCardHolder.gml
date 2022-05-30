///AttackCardHolder(AttackMapString)
var AttackMapString=argument0;
var AttackMap=json_decode(AttackMapString);
//identifying object
var Victim_Map=AttackMap[? "Victim"]
var VictimObj=socket_to_instanceid[? real(Victim_Map[? "Socket"])].Cardholderlist[| real(Victim_Map[? "Pos"])]


//going through all the attackers
var AttackingList=ds_list_create()
ds_list_read(AttackingList,AttackMap[? "AttackingList"])
for(var i=0;i<ds_list_size(AttackingList);i++){
    var _m=json_decode(AttackingList[| i])
    var AttackObj=socket_to_instanceid[? real(_m[? "Socket"])].Cardholderlist[| real(_m[? "Pos"])];
    //deduction of health
    with(VictimObj){
        Stats[? "Hp"]-=AttackObj.Stats[? "Atk"]
    }
    
    
    //remove atkalrdy
    AttackObj.Stats[? "AtkAlrdy"]=true
    ds_map_destroy(_m)
}
ds_list_destroy(AttackingList)

//delete Main AttackMap
ds_map_destroy(AttackMap)
