///draw_GUI_HeroHealth(x,y,x2,y2,Amt1,Max1,Color1,Color2,Lerpvalue)
var _x=argument0
var _y=argument1
var _wid=argument2 - _x
var _bwid=_wid/argument5
var _hei=argument3 - _y
var _tgtwidth=_bwid*argument4

GUIHeroHpWidth=lerp(GUIHeroHpWidth,_tgtwidth,0.5)

draw_set_color(argument6)
//health bar
draw_set_alpha(0.6)
draw_rectangle(_x,_y,_x+GUIHeroHpWidth,_y+_hei,false)

//background
draw_set_alpha(0.1)
draw_rectangle(_x,_y,_x+_wid,_y+_hei,false)

draw_set_alpha(1)
draw_set_color(c_white)

//health lines
for(i=1;i<argument4;i++){
    draw_line_width(_x+_bwid*i,_y+_hei-10,_x+_bwid*i,_y+_hei,3)
}

//bottom line
draw_set_color(argument7)
draw_rectangle(_x,_y+_hei-5,_x+_wid,_y+_hei,false)
draw_set_color(c_white)
