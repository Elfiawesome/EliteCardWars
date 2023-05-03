///PartTypeSetup_BlueLaser(direction)
pt = part_type_create();
// setup a default particle
part_type_blend(pt, 1);
part_type_shape(pt, pt_shape_sphere);
part_type_size(pt, 0.47, 5.17, 0, 0);
part_type_scale(pt, 1, 1);
part_type_color_mix(pt, make_color_rgb(0, 127.50, 255), make_color_rgb(0, 50.29, 255));
part_type_alpha3(pt, 1, 0.60, 0.04);
part_type_life(pt, 84.51, 176.06);
part_type_orientation(pt, 0, 359, 0, 0, false);
part_type_speed(pt, 5, 5, 3.59, 5);
if argument0=1{
    part_type_direction(pt, 89, 91, 0, 0);
}else{
    part_type_direction(pt, 269, 271, 0, 0);
}
part_type_gravity(pt, 0, 0);
return pt
