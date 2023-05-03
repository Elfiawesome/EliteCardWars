///ani_GoToEnemyAndAttackSet_basic(attacker,victimlist(without damage no) )
var Attacker=argument0
var VictimList=argument1
var Victim=VictimList[| 0]
var animator=instance_create(0,0,obj_animator)
with(animator){
    var n=0;
    AnimatingOrderList[| n]=ani_depth
    var tempMap=ds_map_create();
    tempMap[? "Object"]=Attacker.id
    tempMap[? "depth"]=Attacker.depth-10
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    AnimatingOrderList[| n]=ani_move_lerp
    var tempMap=ds_map_create();
    tempMap[? "Object"]=Attacker.id
    tempMap[? "x"]=Victim.x
    tempMap[? "y"]=Victim.y-sign(Victim.y-Attacker.y)*100
    tempMap[? "Amt"]=0.3
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    for(var i=0;i<ds_list_size(VictimList);i++){
    AnimatingOrderList[| n]=ani_shake
    var tempMap=ds_map_create();
    tempMap[? "Object"]=VictimList[| i]
    tempMap[? "Amt"]=10
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    }
    
    AnimatingOrderList[| n]=ani_rotate_lerp
    var tempMap=ds_map_create();
    tempMap[? "Object"]=Attacker.id
    tempMap[? "rot"]=30
    tempMap[? "Amt"]=0.3
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    AnimatingOrderList[| n]=ani_rotate_lerp
    var tempMap=ds_map_create();
    tempMap[? "Object"]=Attacker.id
    tempMap[? "rot"]=Attacker.image_angle
    tempMap[? "Amt"]=0.3
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
        
    AnimatingOrderList[| n]=ani_move_lerp
    var tempMap=ds_map_create();
    tempMap[? "Object"]=Attacker.id
    tempMap[? "x"]=Attacker.Homex
    tempMap[? "y"]=Attacker.Homey
    tempMap[? "Amt"]=0.3
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    AnimatingOrderList[| n]=ani_depth
    var tempMap=ds_map_create();
    tempMap[? "Object"]=Attacker.id
    tempMap[? "depth"]=Attacker.depth
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
}
ds_list_add(global.AnimatorSys[0].AnimatingOrderList,animator)

