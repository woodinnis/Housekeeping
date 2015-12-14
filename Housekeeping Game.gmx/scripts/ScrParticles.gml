/*
*   Create the particles used around the game
*/

// The sparkle effect used when cleaning toilets/sinks
globalvar Sname;
globalvar particle1;

Sname = part_system_create();

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_spark);
part_type_size(particle1,0.50,0.50,0,0);
part_type_scale(particle1,1,1);
part_type_color1(particle1,c_silver);
part_type_alpha1(particle1,0.80);
part_type_speed(particle1,1,1,0,0.20);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,60,60);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,ps_shape_ellipse,ps_distr_gaussian);
//part_emitter_stream(Sname,emitter1,particle1,25);
