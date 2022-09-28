function openSpecChest(z, a, b){
	if(!inBounds(a, b)){ return; }
	
	
	var t = imgKeyTwo;
	if(z == ww.triangleFloor){ t = imgSilverTriangle; }
	
	ww.pmap[z][a, b] = t;
	
	
	ww.bmap[z][a, b] = noone;
}