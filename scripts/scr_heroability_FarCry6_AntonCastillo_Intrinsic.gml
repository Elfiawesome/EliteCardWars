var CurrentPt=global.TurnPointArray[
    clamp(
        global.NetworkObj.GameLifespan+1,
        0,
        array_length_1d(global.TurnPointArray)-1
    )
];
var _id=HeroGetMultiStatsString(id)
var _msa=Stats[? "Multi_ExtraPointsAmt"];
var _msd=Stats[? "Multi_ExtraPointsDuration"];
_msa[? _id]=floor(CurrentPt*0.3)
_msd[? _id]=2
player_con_HeroUpdateMultiStats()
