///isCircleHitByLine( sourceX, sourceY, sourceAngle, laserRange, targetX, targetY, targetRadius );

var aSourceX = argument0;
var aSourceY = argument1;
var aSourceAngle = argument2;
var aSourceRange = argument3
var aTargetX = argument4;
var aTargetY = argument5;
var aTargetRadius = argument6;

var tDirToSource = point_direction( aTargetX, aTargetY, aSourceX, aSourceY );
var tDistToSource = point_distance( aTargetX, aTargetY, aSourceX, aSourceY );

var tTanX1 = aTargetX + lengthdir_x( aTargetRadius, tDirToSource + 90 );
var tTanY1 = aTargetY + lengthdir_y( aTargetRadius, tDirToSource + 90 );
var tTanAngle1 = point_direction( tTanX1, tTanY1, aSourceX, aSourceY );

var tTanX2 = aTargetX + lengthdir_x( aTargetRadius, tDirToSource - 90 );
var tTanY2 = aTargetY + lengthdir_y( aTargetRadius, tDirToSource - 90 );
var tTanAngle2 = point_direction( tTanX2, tTanY2, aSourceX, aSourceY );


if ( tDistToSource < aSourceRange ) 
    && aSourceAngle > min( tTanAngle1 - 180, tTanAngle2 - 180 ) 
    && aSourceAngle < max( tTanAngle1 - 180, tTanAngle2 - 180 ) {
    
        return true;
}


return false;

