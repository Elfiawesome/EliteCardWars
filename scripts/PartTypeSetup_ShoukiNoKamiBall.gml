///PartTypeSetup_ShoukiNoKamiBall()
var pt = part_type_create();
// setup a default particle
part_type_blend(pt, 1);
part_type_shape(pt, pt_shape_sphere);
part_type_size(pt, 0.47*3, 5.17*3, 0, 0);
part_type_scale(pt, 1, 1);
part_type_color_mix(pt, make_color_rgb(159.54, 0.89, 101.41), make_color_rgb(46.10, 66.16, 149.15));
part_type_alpha3(pt, 0.07, 0.60, 0.04);
part_type_life(pt, 33, 88);
part_type_orientation(pt, 0, 0, 0, 0, false);
part_type_speed(pt, 4.22, 2.51, 0.02*4, 0);
part_type_direction(pt, 0, 359, -2.89, 0);
part_type_gravity(pt, 0, 0);

return pt
