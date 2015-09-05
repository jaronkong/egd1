///timelineGetValue( tag, time = current )
//Get the value of something at a certain time

var aTag = argument[0];
var aTime = timelineController.time;
if ( argument_count > 1 ) {
    aTime = argument[1];
}

var tCheck = "0";
var tValue = 0;

ini_open( working_directory + "\data\timeline.dat" );

while ( ini_section_exists( tCheck ) ) {
    if ( timelineNotYetTime( real( tCheck ) ) ) break;
    if ( ini_key_exists( tCheck, aTag ) ) {
        tValue = ini_read_real( tCheck, aTag, 0 );
    }
    if ( !ini_key_exists( tCheck, "next" ) ) break;
    tCheck = ini_read_string( tCheck, "next", "" );
}

ini_close( );

return tValue;
