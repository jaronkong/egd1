///timelineWasTime( time )
//Returns true if that time is before this frame

var tTime = argument0;

with ( timelineController ) {
    if ( timeLast >= tTime ) {
        return true;
    }
}

return false;
