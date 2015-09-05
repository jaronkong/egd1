///createLightBurstAtPosition( x, y, numRays, maxDist, color );
//Creates a light burst


var posX = argument0;
var posY = argument1;

repeat ( argument2 ) {
    with (instance_create( posX, posY, lightBurstRay )) {
        owner = noone;
        maxDist = argument3 + random( argument3 * 2 );
        lightColor = argument4;
        refX = posX;
        refY = posY;
    }
}


