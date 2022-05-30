///draw_curve(x1,y1,x2,y2,direction,width,detail)
{
    var x1, y1, x2, y2, start_angle, detail, dist, dist_ang, inc, draw_x, draw_y;
    x1 = argument[0];
    y1 = argument[1];
    x2 = argument[2];
    y2 = argument[3];
    start_angle = argument[4];
    detail = argument[6];
 
    dist = point_distance(x1,y1,x2,y2);
    dist_ang = angle_difference(point_direction(x1,y1,x2,y2),start_angle);
    inc = (1/detail);
 
    /*draw_primitive_begin(pr_linestrip);
    for (i=0; i<1+inc; i+=inc) {
        draw_x = x1 + (lengthdir_x(i * dist, i * dist_ang + start_angle));
        draw_y = y1 + (lengthdir_y(i * dist, i * dist_ang + start_angle));
        draw_vertex(draw_x,draw_y);
    }
    draw_primitive_end();
    */
    var startx=x1;
    var starty=y1;
    for (i=0; i<1+inc; i+=inc) {
        drawx = x1 + (lengthdir_x(i * dist, i * dist_ang + start_angle));
        drawy = y1 + (lengthdir_y(i * dist, i * dist_ang + start_angle));
        draw_line_width(startx,starty,drawx,drawy,argument[5]);
        var startx=drawx
        var starty=drawy
    }
    return 0;
}
