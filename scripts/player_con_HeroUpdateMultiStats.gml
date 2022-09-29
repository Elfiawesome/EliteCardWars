///player_con_HeroUpdateMultiStats()
var Amt=0;
var _m=Stats[? "Multi_ExtraPointsDuration"];var _n=Stats[? "Multi_ExtraPointsAmt"];
if !ds_map_empty(_m){for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){Amt+=_n[? k];}}
Stats[? "ExtraPoints"]=Amt;Amt=0
//immunity
_m=Stats[? "Multi_IsImmune"]
if !ds_map_empty(_m){Stats[? "IsImmune"]=1}else{Stats[? "IsImmune"]=0}

var _m=Stats[? "Multi_DisableSpells"];
if ds_map_empty(_m){Stats[? "DisableSpells"]=false}else{Stats[? "DisableSpells"]=true}
var _m=Stats[? "Multi_ForceAttackHolder"];
if ds_map_empty(_m){Stats[? "ForceAttackHolder"]=-1}else{Stats[? "ForceAttackHolder"]=_m[? ds_map_find_first(_m)]}
