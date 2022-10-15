

x += xs;
y += ys;

image_xscale += .002;
image_yscale += .002;



if(x < 0 || y < 0 || x > (17 * 64) || y > room_height ||
				instance_number(objScreenCombat) < 1
						){
	instance_destroy();
}