///AttackCardHolder(AttackMapString)
var AttackMapString=argument0;
var AttackMap=json_decode(AttackMapString);
//identifying object
var Victim_Map=AttackMap[? "Victim"]
var VictimCon=socket_to_instanceid[? real(Victim_Map[? "Socket"])]
var VictimObj=VictimCon.Cardholderlist[| real(Victim_Map[? "Pos"])]

//going through all the attackers
var AttackingList=ds_list_create()
ds_list_read(AttackingList,AttackMap[? "AttackingList"])
for(var i=0;i<ds_list_size(AttackingList);i++){
    var _m=json_decode(AttackingList[| i])
    var AttackObj=socket_to_instanceid[? real(_m[? "Socket"])].Cardholderlist[| real(_m[? "Pos"])];
    //Listing out of victims
    var _list=scr_ListVictimsByAttackersSPAtkTypes(VictimObj,AttackObj)
    var _VictList=ds_list_create()
    //deduction of health
    for(var ii=0;ii<ds_list_size(_list);ii+=1){
        with(_list[| ii]){
            //damage numbers
            var _m=ds_map_create();
            _m[? "Object"]=id
            _m[? "DamageNumber"]=FindDamageAmount(AttackObj.Stats[? "Finalized_Atk"],AttackObj,id)
            ds_list_add(_VictList,_m)
            ds_list_mark_as_map(_VictList,ds_list_size(_VictList)-1)
            //execute Dealing Damage Event
            GameEvent_cardholders_DealDamage(id,AttackObj)
            //execute Damaged Event
            GameEvent_cardholders_Damaged(AttackObj)
        }
    }
    //Splash Damage
    if AttackObj.Stats[? "Splash_Atk"]=true{
        for(var ii=0;ii<ds_list_size(VictimCon.Cardholderlist);ii++){
            if VictimObj!=VictimCon.Cardholderlist[| ii]{
                with(VictimCon.Cardholderlist[| ii]){
                //damage numbers
                var _m=ds_map_create();
                _m[? "Object"]=id
                _m[? "DamageNumber"]=FindDamageAmount(AttackObj.Stats[? "SplashAtk"],AttackObj,id)//(AttackObj.Stats[? "SplashAtk"]*GetIntakeMultiplier(AttackObj,id)-id.Stats[? "Def"])
                ds_list_add(_VictList,_m);ds_list_mark_as_map(_VictList,ds_list_size(_VictList)-1)
                //execute Dealing Damage Event
                GameEvent_cardholders_DealSplashDamage(id,AttackObj)
                //execute Damaged Event
                GameEvent_cardholders_Damaged(AttackObj)
                ds_list_add(_list,id)
                }
            }
        }
    }
    //animation
    ani_AttackSet_basic(AttackObj,_VictList)//VictimObj)
    
    //activate after damaged ability
    for(var ii=0;ii<ds_list_size(_list);ii+=1){
        with(_list[| ii]){
            GameEvent_cardholders_AfterDamaged(_list[| ii])
        }
    }
    //if Killed, activate Kill Ability
    for(var ii=0;ii<ds_list_size(_list);ii+=1){
        if _list[| ii].Stats[? "Finalized_Hp"]<1{
            with(AttackObj){Activate_Kill_Ability(_list[| ii])}
        }
    }
    //delete lists
    ds_list_destroy(_list)
    ds_list_destroy(_VictList)
    
    //remove atkalrdy
    AttackObj.Stats[? "AtkLeft"]-=1
    ds_map_destroy(_m)
    if VictimObj.Stats[? "Finalized_Hp"]<1{break;}
}
ds_list_destroy(AttackingList)

//delete Main AttackMap
ds_map_destroy(AttackMap)
