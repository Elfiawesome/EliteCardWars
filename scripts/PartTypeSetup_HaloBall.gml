///PartTypeSetup_HaloBall()
var pt = part_type_create();
// setup a default particle
part_type_blend(pt, 1);
part_type_shape(pt, pt_shape_circle);
part_type_size(pt, 2.18, 4.46*2, 0, 0);
part_type_scale(pt, 1, 1);
part_type_color_mix(pt, make_color_rgb(127.22, 103.53, 252.88), make_color_rgb(160.23, 126.00, 72.89));
part_type_alpha3(pt, 0.71, 0.59, 0.02);
part_type_life(pt, 36, 76);
part_type_orientation(pt, 0, 0, 0, 0, false);
part_type_speed(pt, 1.23, 3.52, -2.11, -1.72);
part_type_direction(pt, 0, 117.73, 0, 0);
part_type_gravity(pt, 0, 0);


return pt
