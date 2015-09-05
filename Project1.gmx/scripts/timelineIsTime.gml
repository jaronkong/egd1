///timelineIsTime( time )
//Returns true if that time is this frame

var aTime = argument0;

with ( timelineController ) {
    if ( timeLast < aTime ) {
        if ( time >= aTime ) {
            return true;
        }
    }
}

return false;
