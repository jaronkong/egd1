///endGame();

with ( instance_create( 0, 0, gameoverActivate ) ) {
    audio_play_sound( shatter_sd, 1, false );
}
