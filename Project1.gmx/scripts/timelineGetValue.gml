///timelineGetValue( tag )
//Get the value of something at the current time

var aTag = argument[0];

var tTimeline = timelineLoadValues( aTag );
var tLength = array_height_2d( tTimeline );

for ( var i = 1; i < tLength; ++i ) {
    if ( timelineNotYetTime( tTimeline[i, 0] ) ) {
        if ( tTimeline[i, 2] ) {
            var tDelta = ( tTimeline[i, 0] - tTimeline[i-1, 0] );
            var tPos = ( timelineController.time - tTimeline[i-1, 0] );
            var tProp = ( tPos / tDelta );
            return lerp( tTimeline[i-1, 1], tTimeline[i, 1], tProp );
        }
        return tTimeline[i-1, 1];
    }
}

return tTimeline[tLength-1, 1];
