/// draw_lightning(x1, y1, x2, y2, xmin, xmax, ymin, ymax, color1, color2)
//                  0   1   2   3     4     5     6     7     8
// Draws a lightning between points.
var i, r, c, l, dx, dy, sx, sy, px, py, cx, cy, alpha;
// avoid drawing outside view:
if (max(argument0, argument2) < view_xview[view_current] - 10) return 0
if (max(argument1, argument3) < view_yview[view_current] - 10) return 0
if (min(argument0, argument2) > view_xview[view_current] + view_wview[view_current] + 10) return 0
if (min(argument1, argument3) > view_yview[view_current] + view_hview[view_current] + 10) return 0
// find distance between points (used for loop)
l = point_distance(argument0, argument1, argument2, argument3)
if (l == 0) return 0
// main direction:
i = point_direction(argument0, argument1, argument2, argument3)
dx = lengthdir_x(1, i); dy = lengthdir_y(1, i)
// side direction:
i += 90
sx = lengthdir_x(1, i); sy = lengthdir_y(1, i)
// first point coordinates:
px = argument0; py = argument1
c = 0
i = random_range(argument4, argument5)
alpha = draw_get_alpha()*0.7
repeat (5000) { // edit for line segment limit
    r = choose(-1, +1) * (argument6 + (argument7 - argument6)
        * lengthdir_y(random(1), i / l * 180)) // this part makes lightning "wider" near middle
    // current point coordinates:
    if (i < l) {
        cx = argument0 + dx * i + sx * r
        cy = argument1 + dy * i + sy * r
    } else { cx = argument2; cy = argument3 } // end point
    // line drawing code here:
    // can be just a single draw_line or something fancy like this:
    
    draw_set_color(argument8)
    draw_set_alpha(alpha * 0.3)
    draw_line_width(px, py, cx, cy, 3.7*3)
    draw_set_color(argument9)
    draw_set_alpha(alpha * 0.7)
    draw_line_width(px, py, cx, cy, 1.3)
    // exit condition:
    if (i >= l) break
    // update previous point coordinates:
    px = cx; py = cy
    // increments:
    c += 1
    i += random_range(argument4, argument5)
}

draw_set_alpha(1)
return c
