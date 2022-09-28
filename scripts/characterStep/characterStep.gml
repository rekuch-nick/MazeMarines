function characterStep(xMove, yMove){
	var a = xSpot + xMove;
	var b = ySpot + yMove;
	var z = pc.zSpot;
	
	if(xMove != 0){ face = xMove; }
	
	if(!inBounds(a, b)){ return; }
	
	if(ww.bmap[z][a, b] != noone){ return; }
	
	if(ww.mmap[z][a, b] != noone){ return; }
	
	
	var temp = ww.mmap[z][xSpot, ySpot];
	ww.mmap[z][xSpot, ySpot] = ww.mmap[pc.zSpot][a, b];
	ww.mmap[pc.zSpot][a, b] = temp;
	
	
	xSpot = a;
	ySpot = b;
}