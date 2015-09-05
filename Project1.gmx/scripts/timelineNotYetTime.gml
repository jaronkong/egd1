///timelineNotYetTime( time )
//Returns true if that time is after this frame

var aTime = argument0;

with ( timelineController ) {
    if ( time < aTime ) {
        return true;
    }
}

return false;
