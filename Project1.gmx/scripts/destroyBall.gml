///destroyBall( ballID );

with ( argument0 ) {
    audio_play_sound( subHit_sd, 1, false );
    createBurstEffect( x, y );
    instance_destroy();
}

