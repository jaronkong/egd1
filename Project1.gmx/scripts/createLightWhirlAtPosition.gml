///createLightWhirlAtPosition( x, y, startRadius, targetRadius, radiusTween, rotRangeStart, rotRangeEnd, contractTween, thickness, spinRate, spinRateTween, color, alpha, number );

for ( var i = 0; i < 360; i += 360 / argument13 ) {
    with ( instance_create( argument0, argument1, lightWhirl ) ) {
        currentAngle = i;
    
        anchor = noone;
        drawRadius = argument2;
        endDrawRadius = argument3;
        drawRadiusTween = argument4;
        
        rotRange = argument5;
        endRotRange = argument6;
        
        contractTween = argument7;
        thickness = argument8;
        
        spinRate = argument9;
        spinRateTween = argument10;
        
        color = argument11;
        alpha = argument12;
         
        
    }
}


