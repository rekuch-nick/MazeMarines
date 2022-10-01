y += choose(-32, 32);

if(y > room_height - 32){
	y = 0;
}

if(y < 0){
	y = room_height - 32;
}