///Activate_Kill_Ability(victim Obj)
if Stats[? "IsAbilityStun"]=false{
    var _no=IsAbilityTrigger(CardID,AbilityTrigger.Kill)
    if _no!=-1{
        script_execute(global.UnitDat_AbilityScript[CardID,_no],argument0)
    }
    var _l=Stats[? "AbilitiesScript"]
    for(var i=0;i<ds_list_size(_l);i++){
        var _id=_l[| i]
        var _no=IsAbilityTrigger(_id,AbilityTrigger.Kill)
        if _no!=-1{
            script_execute(global.UnitDat_AbilityScript[_id,_no],argument0)
        }
    }
}
