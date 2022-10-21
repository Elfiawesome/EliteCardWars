///Activate_WhenCasted_Spell()
var _ID=argument0
var _map=argument1
var _no=IsSpellTrigger(_ID,SpellTrigger.WhenCasted)
if _no!=-1{
    script_execute(global.SpellDat_SpellScript[_ID,_no],_map)
}
