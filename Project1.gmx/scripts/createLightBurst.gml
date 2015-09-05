///createLightBurst( object, numRays, maxDist, color );
//Creates a light burst



if ( instance_exists( argument0 ) ) {
    repeat ( argument1 ) {
        with (instance_create( argument0.x, argument0.y, lightBurstRay )) {
            owner = argument0;
            maxDist = argument2 + random( argument2 * 2 );
            lightColor = argument3;
        }
    }
}