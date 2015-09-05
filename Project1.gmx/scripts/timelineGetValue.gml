///timelineGetValue( tag, time = current )
//Get the value of something at a certain time

var aTag = argument[0];
var aTime = timelineController.time;
if ( argument_count > 1 ) {
    aTime = argument[1];
}

var tTimeline = timelineLoadValues( aTag );
var tLength = array_length_1d( tTimeline );

for ( var i = 1; i < tLength; ++i ) {
    if ( timelineNotYetTime( tTimeline[i, 0] ) ) {
        return tTimeline[i-1, 1];
    }
}

return tTimeline[tLength - 1, 1];
