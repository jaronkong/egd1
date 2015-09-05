///timelineWasTime( time )
//Returns true if that time is before this frame

var aTime = argument0;

with ( timelineController ) {
    if ( timeLast >= aTime ) {
        return true;
    }
}

return false;
