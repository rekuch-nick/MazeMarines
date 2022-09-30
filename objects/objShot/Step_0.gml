if(instance_number(objMenu)){ return; }
if(instance_number(objScreenCombat) != 1){
	instance_destroy();
	return;
}

if(firstFrame){
	var angle = arctan2(ty - y, tx - x);
	xs = cos(angle) * moveSpeed;
	ys = sin(angle) * moveSpeed;
	
	firstFrame = false;
}


x += xs;
y += ys;
ys += grav;

if(sprite_index == imgShotSong){ //&& irandom_range(1, 10) == 1){ 
	//grav *= -1;
	//if(grav > 0){ grav = 1; } else { grav = -1; }
	y += choose(-4, 4);
}



if(x > (room_width - (5 * 64)) || x < 0 || y < 0 || y > room_width){
	instance_destroy();
}