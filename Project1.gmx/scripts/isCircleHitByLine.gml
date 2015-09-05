///isCircleHitByLine( sourceX, sourceY, sourceAngle, targetX, targetY, targetRadius );

var aSourceX = argument0;
var aSourceY = argument1;
var aSourceAngle = argument2;
var aTargetX = argument3;
var aTargetY = argument4;
var aTargetRadius = argument5;

var tDirToSource = point_direction( aTargetX, aTargetY, aSourceX, aSourceY );

var tTanX1 = aTargetX + lengthdir_x( aTargetRadius, tDirToSource + 90 );
var tTanY1 = aTargetY + lengthdir_y( aTargetRadius, tDirToSource + 90 );
var tTanAngle1 = point_direction( tTanX1, tTanY1, aSourceX, aSourceY );

var tTanX2 = aTargetX + lengthdir_x( aTargetRadius, tDirToSource - 90 );
var tTanY2 = aTargetY + lengthdir_y( aTargetRadius, tDirToSource - 90 );
var tTanAngle2 = point_direction( tTanX2, tTanY2, aSourceX, aSourceY );


if ( aSourceAngle > min( tTanAngle1 - 180, tTanAngle2 - 180 ) ) {
    if ( aSourceAngle < max( tTanAngle1 - 180, tTanAngle2 - 180 ) ) {
        return true;
    }
}
return false;


