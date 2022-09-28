function wallBreak(a, b){
	if(!inBounds(a, b)){ return; }
	
	var t = ww.bmap[pc.zSpot][a, b];
	
	
	if(t == imgBlock01){
		ww.bmap[pc.zSpot][a, b] = noone;
		
		return true;
	}
	
	return false;
}