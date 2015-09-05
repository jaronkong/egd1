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

pBurst = part_type_create();
part_type_sprite(pBurst, particle_flare_spr, 0, 0, 0 );
part_type_size(pBurst,0.1,0.2,0.05,0);
part_type_scale(pBurst,1,1);
part_type_color2(pBurst,make_color_rgb( 240, 230, 255 ), make_color_rgb( 200, 220, 255 ));
part_type_alpha3(pBurst,0, 0.4,0);
part_type_speed(pBurst,0,7,-0.4,0);
part_type_direction(pBurst,0,359,0,0);
part_type_blend(pBurst,1);
part_type_life(pBurst,10,20);
ds_map_add( global.particleMap, "burst", pBurst );

pBurstSpread = part_type_create();
part_type_sprite(pBurstSpread, particle_sphere_spr, 0, 0, 0 );
part_type_size(pBurstSpread,0.1,0.2,-0.001,0);
part_type_scale(pBurstSpread,1,0.5);
part_type_color2(pBurstSpread,make_color_rgb( 240, 230, 255 ), make_color_rgb( 200, 220, 255 ));
part_type_alpha2(pBurstSpread,0.4,0);
part_type_speed(pBurstSpread,2,9,-0.1,0);
part_type_direction(pBurstSpread,0,359,0,0);
part_type_orientation(pBurstSpread, 0, 0, 0, 0, 1 );
part_type_blend(pBurstSpread,1);
part_type_life(pBurstSpread,25,45);
ds_map_add( global.particleMap, "burstSpread", pBurstSpread );

pLaserLine = part_type_create();
part_type_sprite(pLaserLine, particle_sphere_spr, 0, 0, 0 );
part_type_size(pLaserLine,0.1,0.2,-0.003,0);
part_type_scale(pLaserLine,5,0.25);
part_type_color2(pLaserLine,make_color_rgb( 255, 200, 0 ), make_color_rgb( 255, 200, 255 ));
part_type_alpha2(pLaserLine,1,0);
part_type_speed(pLaserLine,0,3,0,0);
part_type_direction(pLaserLine,0,0,0,0);
part_type_orientation(pLaserLine, 0, 0, 0, 0, 1 );
part_type_blend(pLaserLine,1);
part_type_life(pLaserLine,30,45);
ds_map_add( global.particleMap, "laserLine", pLaserLine );

pStartBurst = part_type_create();
part_type_sprite(pStartBurst, particle_sphere_spr, 0, 0, 0 );
part_type_size(pStartBurst,0.1,0.2,0.07,0);
part_type_scale(pStartBurst,4,0.1);
part_type_color2(pStartBurst,make_color_rgb( 255, 200, 0 ), c_purple);
part_type_alpha2(pStartBurst,1,0);
part_type_speed(pStartBurst,0,0,0,0);
part_type_direction(pStartBurst,0,0,0,0);
part_type_orientation(pStartBurst, 0, 0, 0, 0, 1 );
part_type_blend(pStartBurst,1);
part_type_life(pStartBurst,25,30);
ds_map_add( global.particleMap, "startBurst", pStartBurst );
