///endGame();

audio_stop_sound( Starfall_bgm );

with ( ball ) {
    instance_destroy();
}
with ( controller ) {
    rumble += 15;
    event_user( 0 );
}

with ( instance_create( 0, 0, gameoverActivate ) ) {
    audio_play_sound( shatter_sd, 1, false );
}
