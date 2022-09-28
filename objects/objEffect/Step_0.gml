



x += xs;
y += ys;

ys += grav;


image_angle += rot;

image_xscale += xGrow;
image_yscale += yGrow;



image_alpha -= fade;
timeCD --;

if(image_alpha < 0 || timeCD < 0){
	instance_destroy();
}