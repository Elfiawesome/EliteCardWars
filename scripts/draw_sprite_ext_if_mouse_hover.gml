///draw_sprite_ext_if_mouse_hover(sprite,image_index,x,y,image_xscale,image_yscale,rotation,mousex,mousey)
var sprite=argument0
var index=argument1
var _x=argument2
var _y=argument3
var xscale=argument4
var yscale=argument5
var rotation=argument6
var msx=argument7
var msy=argument8
var ishover=false

draw_sprite_ext(sprite,index,_x,_y,xscale,yscale,rotation,c_white,1)

var _w=(sprite_get_width(sprite)*xscale)
var _h=(sprite_get_height(sprite)*yscale)
if (msx>(_x-_w/2)) && (msx<(_x+_w/2)){
if (msy>(_y-_h/2)) && (msx<(_y+_h/2)){
ishover=true
}
}

return ishover
