///scr_menu_button_draw_highlight_tabstyle(msx,msy,x,y,w,h,buttonid)
var msx=argument0
var msy=argument1
var _x=argument2
var _y=argument3
var _w=argument4
var _h=argument5
var buttonid=argument6
if point_in_rectangle(msx,msy,_x,_y,_x+_w,_y+_h){
    MenuButtonOverlay[buttonid,0]=lerp(MenuButtonOverlay[buttonid,0],1,0.35)
    MenuButtonOverlay[buttonid,1]=1
    if mouse_check_button_pressed(mb_left){MenuButtonPressed[buttonid]=true}
}else{
    MenuButtonOverlay[buttonid,0]=lerp(MenuButtonOverlay[buttonid,0],0,0.1)
    MenuButtonOverlay[buttonid,1]=lerp(MenuButtonOverlay[buttonid,1],0,0.07)
}
if MenuButtonOverlay[buttonid,0]!=0{
    draw_set_color(c_white)
    draw_rectangle(
        _x+_w/2-_w/2*MenuButtonOverlay[buttonid,0],
        _y+_h-7.5*MenuButtonOverlay[buttonid,1],
        _x+_w/2+_w/2*MenuButtonOverlay[buttonid,0],
        _y+_h,
    false)
}
if MenuButtonOverlay[buttonid,1]!=0{
}
