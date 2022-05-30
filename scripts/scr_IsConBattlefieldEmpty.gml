var Con=argument0
var Valid=false

var CheckCntr=0
for(var i=0;i<ds_list_size(Cardholderlist);i++){
    if CardID!=0{
        if Cardholderlist[| i].Stats[? "Hp"]<1{
            CheckCntr++
        }
    }
}
if CheckCntr=3{
    Valid=true
}

return Valid
