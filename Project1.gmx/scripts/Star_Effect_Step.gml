image_xscale += 1/60;
image_yscale += 1/60;
image_alpha -= 1/60;

if (image_xscale >= 2) {
    instance_destroy();
}

image_angle = parent.image_angle;
