///timelineGetValue( tag )
//Get the value of something at the current time

var aTag = argument[0];

var tTimeline = timelineLoadValues( aTag );
var tLength = array_height_2d( tTimeline );

for ( var i = 1; i < tLength; ++i ) {
    if ( timelineNotYetTime( tTimeline[i, 0] ) ) {
        return tTimeline[i-1, 1];
    }
}

return tTimeline[tLength-1, 1];
