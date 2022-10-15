

x += xs;

w ++;


if(x < 0 || y < 0 || x > (17 * 64) || y > room_height ||
				instance_number(objScreenCombat) < 1
						){
	instance_destroy();
}