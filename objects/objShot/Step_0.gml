if(instance_number(objMenu)){ return; }
if(instance_number(objScreenCombat) != 1){
	instance_destroy();
	return;
}

if(firstFrame){
	
	
	var angle = arctan2(ty - y, tx - x);
	xs = cos(angle) * moveSpeed;
	ys = sin(angle) * moveSpeed;
	
	if(lob){
		lobDis = abs(x - tx) / 2;
	}
	
	
	firstFrame = false;
}

if(lob){
	image_angle += 2;
	lobDis -= abs(xs);
	if(lobDis > 0){
		y -= 2; 
		image_xscale += .08;
		image_yscale += .08;
	} else {
		y += 2;
		image_xscale -= .08;
		image_yscale -= .08;
	}
}
x += xs;
y += ys;
ys += grav;
if(xSpeedup){ xs *= 1.08; ys *= 1.08; }
image_xscale += gro;
image_yscale += gro;

if(sprite_index == imgShotSong){ //&& irandom_range(1, 10) == 1){ 
	//grav *= -1;
	//if(grav > 0){ grav = 1; } else { grav = -1; }
	y += choose(-4, 4);
}



if(x > (room_width - (5 * 64)) || x < 0 || y < 0 || y > room_width){
	ds_list_destroy(alreadyHit);
	instance_destroy();
}