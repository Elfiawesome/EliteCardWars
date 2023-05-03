///ani_AttackSet_ShoukinoKami(attacker,victimlist)
var Attacker=argument0
var VictimList=argument1
var Victim=ds_map_find_value(VictimList[| 0],"Object")
var animator=instance_create(0,0,obj_animator)
with(animator){
    var n=0;
    //create particle Type
    AnimatingOrderList[| n]=ani_create_PartType
    var tempMap=ds_map_create();
    tempMap[? "Name"]="ShoukiNoKamiBall"
    tempMap[? "PartTypeSetup"]=PartTypeSetup_ShoukiNoKamiBall
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    AnimatingOrderList[| n]=ani_create_PartType
    var tempMap=ds_map_create();
    tempMap[? "Name"]="HaloBall"
    tempMap[? "PartTypeSetup"]=PartTypeSetup_HaloBall
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    
    
    //set depth
    AnimatingOrderList[| n]=ani_depth
    var tempMap=ds_map_create();
    tempMap[? "Object"]=Attacker.id
    tempMap[? "depth"]=Attacker.depth-10
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    //move slightly front
    AnimatingOrderList[| n]=ani_move_lerp
    var tempMap=ds_map_create();
    tempMap[? "Object"]=Attacker.id
    tempMap[? "x"]=Attacker.Homex
    tempMap[? "y"]=Attacker.Homey+sign(Victim.y-Attacker.y)*150
    tempMap[? "Amt"]=0.3
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    //Make Particles
    AnimatingOrderList[| n]=ani_create_particles
    var tempMap=ds_map_create();
    tempMap[? "Name"]="ShoukiNoKamiBall"
    tempMap[? "x"]=Attacker.Homex
    tempMap[? "y"]=Attacker.Homey+sign(Victim.y-Attacker.y)*150
    tempMap[? "Amt"]=1
    tempMap[? "Time"]=50
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    //shake enemies
    for(var i=0;i<ds_list_size(VictimList);i++){
    AnimatingOrderList[| n]=ani_shake
    var tempMap=ds_map_create();
    tempMap[? "Object"]=ds_map_find_value(VictimList[| i],"Object")
    tempMap[? "Amt"]=10
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    AnimatingOrderList[| n]=ani_damagenumber
    var tempMap=ds_map_create();
    tempMap[? "Object"]=ds_map_find_value(VictimList[| i],"Object")
    tempMap[? "DamageNumber"]=ds_map_find_value(VictimList[| i],"DamageNumber")
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    
    AnimatingOrderList[| n]=ani_create_particles
    var tempMap=ds_map_create();
    tempMap[? "Name"]="HaloBall"
    tempMap[? "x"]=ds_map_find_value(VictimList[| i],"Object").x
    tempMap[? "y"]=ds_map_find_value(VictimList[| i],"Object").y
    tempMap[? "Amt"]=5
    tempMap[? "Time"]=1
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++

    }
    AnimatingOrderList[| n]=ani_wait
    var tempMap=ds_map_create();
    tempMap[? "Time"]=30
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
    
    AnimatingOrderList[| n]=ani_destroy_PartType
    var tempMap=ds_map_create();
    tempMap[? "Name"]="ShoukiNoKamiBall"
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
    AnimatingOrderList[| n]=ani_destroy_PartType
    var tempMap=ds_map_create();
    tempMap[? "Name"]="HaloBall"
    AnimatingOrderListMap[| n]=json_encode_destroy(tempMap);n++
}
ds_list_add(global.AnimatorSys[0].AnimatingOrderList,animator)

