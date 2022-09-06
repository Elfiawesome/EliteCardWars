///GameEvent_Con_HeroDeath()
ds_list_destroy(cardList)
//destroy all of my card holders
for(var i=0;i<ds_list_size(Cardholderlist);i++){
    with(Cardholderlist[| i]){instance_destroy()}
}
ds_list_clear(Cardholderlist)
//destroy hero
with(Hero){instance_destroy()}
Hero=-1
IsSpectating=true
