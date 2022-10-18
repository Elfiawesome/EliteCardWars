///scr_heroability_Unturned_CaptainSydney_ActivateTarget()
var MapStr=argument0;
var vict=MapStr[? "Victim"]
var atkr=MapStr[? "Attacker"]
var stid=global.NetworkObj.socket_to_instanceid

    //run animation of ability
    var victimList=ds_list_create()
    ds_list_add(victimList,vict)
    ani_AttackSet_basic(atkr,victimList)
    ds_list_destroy(victimList)
    
    //refund the card if you are the victim
    if vict.mysocket=global.NetworkObj.mysocket{
        with(stid[? vict.mysocket]){
            GameEvent_draw_specific_card(vict.CardID)
        }
    }
    //clear that card
    with(vict){
        Stats[? "Finalized_Hp"]=0//for servitors
        Activate_AfterDamaged_Ability()
        GameEvent_cardholders_Clear()
    }
    //Deduct amount
    with(stid[? vict.mysocket]){
        Points-=20
    }
    
    //Ability alrdy done
    //atkr.Stats[? "AbilityAlrdy"]=true
    
    //remove from selected
    global.NetworkObj.IsHeroSelected=false

ds_map_destroy(MapStr)
