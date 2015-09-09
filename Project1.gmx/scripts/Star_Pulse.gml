/// Pulsing animation for victory stars

count += 2;
image_angle += 0.5;
var temp = count/60.0
if (temp > 0 && temp < pi) {
    image_xscale = sin(temp)/2 + 0.5;
    image_yscale = sin(temp)/2 + 0.5;
}

if (count == 2 && id.visible) {
    var inst = instance_create(x,y,Star_Effect);
    inst.parent = id;
}

if (temp > 2*pi) {
    count = 0;
}
