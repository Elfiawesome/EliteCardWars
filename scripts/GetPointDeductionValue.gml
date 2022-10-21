///GetPointDeductionValue(Points To Deduct)
var _p=0;
_p+=argument0

if _p>Hero.Stats[? "DiscountPoints"]{
    _p-=Hero.Stats[? "DiscountPoints"]
}else{
    _p=0
}

return _p
