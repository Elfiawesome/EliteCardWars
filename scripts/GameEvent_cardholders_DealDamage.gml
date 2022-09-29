///GameEvent_cardholders_DealDamage(VictimObj,AttackerObj)
var Atkr=argument1;
var Vict=argument0;
if Vict.Stats[? "IsImmune"]!=0{exit;}
if Vict.Stats[? "IsSPImmune"]!=0 && IsSPAtk(Atkr.Stats)=true{exit;}
if Vict.Stats[? "IsBAImmune"]!=0 && IsSPAtk(Atkr.Stats)=false{exit;}
Vict.Stats[? "Hp"]-=Atkr.Stats[? "Finalized_Atk"]
with(Vict){player_con_CardholdersUpdateMultiStats()}
//activate damaging ability
with(Atkr){
    if Stats[? "IsAbilityStun"]=false{
        var _no=IsAbilityTrigger(CardID,AbilityTrigger.Damaging)
        if _no!=-1{
            script_execute(global.UnitDat_AbilityScript[CardID,_no],Vict)
        }
        var _l=Stats[? "AbilitiesScript"]
        for(var i=0;i<ds_list_size(_l);i++){
            var _id=_l[| i]
            var _no=IsAbilityTrigger(_id,AbilityTrigger.Damaging)
            if _no!=-1{
                script_execute(global.UnitDat_AbilityScript[_id,_no],Vict)
            }
        }
    }
}
//Activate Damaged Ability
with(Vict){
    Activate_Damaged_Ability()
}
