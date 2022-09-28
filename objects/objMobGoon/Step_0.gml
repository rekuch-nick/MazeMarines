if(instance_number(objScreen) > 0){ return false; }




if(x != xSpot * 64 || y != ySpot * 64){
	var slide = 10;
	while(x < xSpot * 64 && slide > 0){ slide --; x ++; }
	while(x > xSpot * 64 && slide > 0){ slide --; x --; }
	while(y > ySpot * 64 && slide > 0){ slide --; y --; }
	while(y < ySpot * 64 && slide > 0){ slide --; y ++; }
	
	//if(x == xSpot * 64 && y == ySpot * 64){ callEnterTile = true; }
}




if(hp <= 0){
	ww.mmap[pc.zSpot][xSpot, ySpot] = noone;
	instance_destroy();
}