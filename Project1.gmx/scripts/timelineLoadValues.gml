///timelineLoadValues( tag )
//Load the timeline for a tag

var aTag = argument0;

var tTimelines = timelineController.timelines;

if ( !ds_map_exists( tTimelines, aTag ) ) {
    var tTimeline = false;
    var tLength = 0;
    
    ini_open( working_directory + "\data\timeline.dat" );
    
    var tCheck = "0";
    while ( ini_section_exists( tCheck ) ) {
        if ( ini_key_exists( tCheck, aTag ) ) {
            var tValue = ini_read_real( tCheck, aTag, 0 );
            tTimeline[tLength, 0] = real( tCheck );
            tTimeline[tLength, 1] = tValue;
            tLength += 1;
        }
        if ( !ini_key_exists( tCheck, "next" ) ) break;
        tCheck = ini_read_string( tCheck, "next", "" );
    }
    
    ini_close( );
    
    ds_map_add( tTimelines, aTag, tTimeline );
}
    
return ds_map_find_value( tTimelines, aTag );
