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




if(x > (room_width - (5 * 64)) || x < 0 || y < 0 || y > room_width){
	instance_destroy();
}