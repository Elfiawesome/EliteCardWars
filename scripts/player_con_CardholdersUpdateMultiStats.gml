///player_con_CardholdersUpdateMultiStats()
_m=Stats[? "Multi_IsImmune"]
if !ds_map_empty(_m){Stats[? "IsFrozen"]=1}else{Stats[? "IsFrozen"]=0}
_m=Stats[? "Multi_IsImmune"]
if !ds_map_empty(_m){Stats[? "IsImmune"]=1}else{Stats[? "IsImmune"]=0}
_m=Stats[? "Multi_IsImmune"]
if !ds_map_empty(_m){Stats[? "IsSPImmune"]=1}else{Stats[? "IsSPImmune"]=0}
_m=Stats[? "Multi_IsImmune"]
if !ds_map_empty(_m){Stats[? "IsBAImmune"]=1}else{Stats[? "IsBAImmune"]=0}

