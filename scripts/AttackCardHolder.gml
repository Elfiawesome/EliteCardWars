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
    //Listing out of victims
    var _list=scr_ListVictimsByAttackersSPAtkTypes(VictimObj,AttackObj)
    //deduction of health
    for(var ii=0;ii<ds_list_size(_list);ii+=1){
        with(_list[| ii]){
            //execute Dealing Damage Event
            GameEvent_cardholders_DealDamage(id,AttackObj)
            //execute Damaged Event
            GameEvent_cardholders_Damaged(AttackObj)
        }
    }
    for(var ii=0;ii<ds_list_size(_list);ii+=1){
        with(_list[| ii]){
            GameEvent_cardholders_AfterDamaged(_list[| ii])
        }
    }
    //animation
    ani_AttackSet_basic(AttackObj,_list)//VictimObj)
    ds_list_destroy(_list)
    
    //remove atkalrdy
    AttackObj.Stats[? "AtkAlrdy"]=true
    ds_map_destroy(_m)
    if VictimObj.Stats[? "Hp"]<1{break;}
}
ds_list_destroy(AttackingList)

//delete Main AttackMap
ds_map_destroy(AttackMap)
