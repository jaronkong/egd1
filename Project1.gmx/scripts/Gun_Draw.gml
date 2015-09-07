var xOffset1 = 80;
var xOffset2 = 36;
var yOffset2 = xOffset1 - xOffset2; 
var yOffset3 = 70;
var lRadius = 50;
var sRadius = 25;
var g_color = c_black;
var g_color2 = c_dkgray;
var sOffset = pi/4;
var lOffset = pi/8;

// Cannon
if (firing) {fireFrames++;}
if (fireFrames > sprite_get_number(Gun_Cannon_spr)) {
    firing = false;
    fireFrames = 0;
}
var degrees = radtodeg(rotation);
draw_sprite_ext(Gun_Cannon_spr,min(fireFrames,sprite_get_number(Gun_Cannon_spr)),x,y-yOffset3,1,1,degrees,c_white,1);

var reloadFrames = 0;
if (fireFrames < sprite_get_number(Gun_Reload_spr)) {
    reloadFrames = fireFrames;
}
draw_sprite_ext(Gun_Reload_spr,reloadFrames,x,y,1,1,0,c_white,1);
draw_sprite_ext(Gun_Body_spr,0,x,y-17,1,1,0,c_white,1);

draw_set_color(c_ltgray);
if (firing) {
    draw_rectangle(x-14,y-10+(sprite_get_number(Gun_Cannon_spr)-fireFrames),x-12,y+sprite_get_number(Gun_Cannon_spr)-10,false);
}
else {
    draw_rectangle(x-14,y-10,x-12,y+sprite_get_number(Gun_Cannon_spr)-10,false);
}

// Under Gears
Draw_Gear(x-xOffset1,y+10,lRadius,8,rotation+lOffset,g_color);
Draw_Gear(x-xOffset2,y-yOffset2+10,sRadius,4,-2*rotation+sOffset,g_color);
Draw_Gear(x-xOffset2,y+yOffset2+10,sRadius,4,-2*rotation+sOffset,g_color);

Draw_Gear(x+xOffset1,y+10,lRadius,8,rotation+lOffset,g_color);
Draw_Gear(x+xOffset2,y-yOffset2+10,sRadius,4,-2*rotation+sOffset,g_color);
Draw_Gear(x+xOffset2,y+yOffset2+10,sRadius,4,-2*rotation+sOffset,g_color);

Draw_Gear(x,y-yOffset3+10,sRadius,4,rotation*2.0-.05,g_color);

// Over Gears
Draw_Gear(x-xOffset1,y,lRadius,8,rotation+lOffset,g_color2);
Draw_Gear(x-xOffset2,y-yOffset2,sRadius,4,-2*rotation+sOffset,g_color2);
Draw_Gear(x-xOffset2,y+yOffset2,sRadius,4,-2*rotation+sOffset,g_color2);

Draw_Gear(x+xOffset1,y,lRadius,8,rotation+lOffset,g_color2);
Draw_Gear(x+xOffset2,y-yOffset2,sRadius,4,-2*rotation+pi/4,g_color2);
Draw_Gear(x+xOffset2,y+yOffset2,sRadius,4,-2*rotation+pi/4,g_color2);

Draw_Gear(x,y-yOffset3,sRadius,4,rotation*2.0-.05,g_color2);
draw_set_color(g_color2);
draw_circle(x,y-yOffset3,sRadius/2,false);

// Rotation
rotation = point_direction(x,y-yOffset3,mouse_x,mouse_y)*(pi/180) - pi/2;

// Reset
draw_set_color(c_white);
