///top_place_meeting(x,y,object)
var xx=argument0
var yy=argument1
var obj=argument2

var _l=ds_list_create()

var _inst=instance_position(xx,yy,obj)
var _topinst=_inst

while(instance_exists(_inst)){
    ds_list_add(_l,_inst)
    instance_deactivate_object(_inst)
    if _inst.depth < _topinst.depth{
        _topinst=_inst
    }
    var _inst=instance_position(xx,yy,obj)
}

while ds_list_size(_l)>0{
    instance_activate_object(_l[| 0])
    ds_list_delete(_l,0)
}
ds_list_destroy(_l)

return _topinst
