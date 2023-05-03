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
    var dmgamt=0
    //deduction of health
    if VictimObj.Stats[? "IsImmune"]=false{
    with(VictimObj){
        //do damage to hero
        dmgamt=ceil((AttackObj.Stats[? "Finalized_Atk"]*GetIntakeMultiplier(AttackObj,0))/10)
        VictimObj.Stats[? "Hp"]-=dmgamt
    }
    }
    //animation
    var _VictList=ds_list_create()
    var _m=ds_map_create();
    _m[? "Object"]=VictimObj
    _m[? "DamageNumber"]=dmgamt
    _m[? "IsHero"]=true
    ds_list_add(_VictList,_m);ds_list_mark_as_map(_VictList,ds_list_size(_VictList)-1)
    ani_AttackSet_basic(AttackObj,_VictList)
    ds_list_destroy(_VictList)
    

    
    //remove atkalrdy
    AttackObj.Stats[? "AtkLeft"]-=1
    ds_map_destroy(_m)
}

ds_list_destroy(AttackingList)

//delete Main AttackMap
ds_map_destroy(AttackMap)


