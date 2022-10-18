///EndOfTurnSpellsCheck()
//run spells scripts
for(var i=0;i<ds_list_size(socketlist);i++){
    with(socket_to_instanceid[? socketlist[| i]]){
        if IsSpectating=false{
        with(Hero){
            var spell=Stats[? "Spells"]
            for(var _i=0;_i<ds_list_size(spell);_i++){
                var spellMap=spell[| _i]
                var spellID=spellMap[? "ID"]
                var _no=IsSpellTrigger(spellID,SpellTrigger.EndOfTurn)
                if _no!=-1{
                    script_execute(global.SpellDat_SpellScript[spellID,_no],spellMap)
                }
                var _no=IsSpellTrigger(spellID,SpellTrigger.StartAndEndOfTurn)
                if _no!=-1{
                    script_execute(global.SpellDat_SpellScript[spellID,_no],spellMap)
                }
            }
        }
        for(var ii=0;ii<ds_list_size(Cardholderlist);ii++){
            with(Cardholderlist[| ii]){
                var spell=Stats[? "Spells"]
                for(var _i=0;_i<ds_list_size(spell);_i++){
                    var spellMap=spell[| _i]
                    var spellID=spellMap[? "ID"]
                    var _no=IsSpellTrigger(spellID,SpellTrigger.EndOfTurn)
                    if _no!=-1{
                        script_execute(global.SpellDat_SpellScript[spellID,_no],spellMap)
                    }
                    var _no=IsSpellTrigger(spellID,SpellTrigger.StartAndEndOfTurn)
                    if _no!=-1{
                        script_execute(global.SpellDat_SpellScript[spellID,_no],spellMap)
                    }
                }
            }
        }
        }
    }
}
