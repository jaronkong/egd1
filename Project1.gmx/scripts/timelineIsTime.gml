///timelineIsTime( time )
//Returns true if that time is this frame

var tTime = argument0;

with ( timelineController ) {
    if ( timeLast < tTime ) {
        if ( time >= tTime ) {
            return true;
        }
    }
}

return false;
