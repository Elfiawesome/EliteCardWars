///player_con_CardholdersUpdateMultiStats()
var _l=ds_list_create()//temp list
_m=Stats[? "Multi_CrossAtk"];for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]=false{ds_list_add(_l,k)}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
if !ds_map_empty(_m){Stats[? "CrossAtk"]=true}else{Stats[? "CrossAtk"]=false}
_m=Stats[? "Multi_SpreadAtk"];for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]=false{ds_list_add(_l,k)}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
if !ds_map_empty(_m){Stats[? "SpreadAtk"]=true}else{Stats[? "SpreadAtk"]=false}
_m=Stats[? "Multi_Sweep_Atk"];for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]=false{ds_list_add(_l,k)}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
if !ds_map_empty(_m){Stats[? "Sweep_Atk"]=true}else{Stats[? "Sweep_Atk"]=false}
_m=Stats[? "Multi_Pierce_Atk"];for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]=false{ds_list_add(_l,k)}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
if !ds_map_empty(_m){Stats[? "Pierce_Atk"]=true}else{Stats[? "Pierce_Atk"]=false}
_m=Stats[? "Multi_Splash_Atk"];for(var k=ds_map_find_first(_m);!is_undefined(k);k=ds_map_find_next(_m,k)){if _m[? k]=false{ds_list_add(_l,k)}};for(var _i=0;_i<ds_list_size(_l);_i++){ds_map_delete(_m,_l[| _i])};ds_list_clear(_l)
if !ds_map_empty(_m){Stats[? "Splash_Atk"]=true}else{Stats[? "Splash_Atk"]=false}
ds_list_destroy(_l)

_m=Stats[? "Multi_IsFrozen"]
if !ds_map_empty(_m){Stats[? "IsFrozen"]=1}else{Stats[? "IsFrozen"]=0}
_m=Stats[? "Multi_IsImmune"]
if !ds_map_empty(_m){Stats[? "IsImmune"]=1}else{Stats[? "IsImmune"]=0}
_m=Stats[? "Multi_IsSPImmune"]
if !ds_map_empty(_m){Stats[? "IsSPImmune"]=1}else{Stats[? "IsSPImmune"]=0}
_m=Stats[? "Multi_IsBAImmune"]
if !ds_map_empty(_m){Stats[? "IsBAImmune"]=1}else{Stats[? "IsBAImmune"]=0}

