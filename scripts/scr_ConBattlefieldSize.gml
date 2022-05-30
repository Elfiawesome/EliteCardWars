///scr_ConBattlefieldSize(controller)
var Con=argument0

var CheckCntr=0
for(var i=0;i<ds_list_size(Con.Cardholderlist);i++){
    if Con.Cardholderlist[| i].CardID!=0{
        if Con.Cardholderlist[| i].Stats[? "Hp"]>0{
            CheckCntr++
        }
    }
}

return CheckCntr
