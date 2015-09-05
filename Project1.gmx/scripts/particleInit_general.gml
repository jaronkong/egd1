///particleInit_general();

//Be sure to change cleanup code in destroy even when adding new particles!
if ( ds_map_exists( global.particleMap, "bounceCore1" ) ) {
    exit;
}

pBounceCore1 = part_type_create();
part_type_sprite(pBounceCore1, particle_offsetFlare_spr, 0, 0, 0 );
part_type_size(pBounceCore1,0.05,0.1,0.03,0);
part_type_scale(pBounceCore1,2,0.3);
part_type_color2(pBounceCore1,make_color_rgb( 255, 200, 0 ), c_purple);
part_type_alpha2(pBounceCore1,1,0);
part_type_speed(pBounceCore1,0,7,-0.2,0);
part_type_direction(pBounceCore1,0,359,0,0);
part_type_orientation(pBounceCore1,0,0,0,0,1);
part_type_blend(pBounceCore1,1);
part_type_life(pBounceCore1,20,30);
ds_map_add( global.particleMap, "bounceCore1", pBounceCore1 );
