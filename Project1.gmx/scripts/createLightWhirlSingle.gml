///createLightWhirlSingle( anchor, startRadius, targetRadius, radiusTween, rotRangeStart, rotRangeEnd, contractTween, thickness, spinRate, spinRateTween, color, alpha, angle );

if ( instance_exists( argument0 ) ) {
    with ( instance_create( argument0.x, argument0.y, lightWhirl ) ) {
        currentAngle = argument12;
    
        anchor = argument0;
        drawRadius = argument1;
        endDrawRadius = argument2;
        drawRadiusTween = argument3;
        
        rotRange = argument4;
        endRotRange = argument5;
        
        contractTween = argument6;
        thickness = argument7;
        
        spinRate = argument8;
        spinRateTween = argument9;
        
        color = argument10;
        alpha = argument11;
         
        
    }
}
