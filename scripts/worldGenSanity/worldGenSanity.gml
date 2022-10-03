function worldGenSanity(z){
	var aa, bb;
	
	// for each tile
	for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
		
		// if we need to be able to reach it
		if(isCriticalTile(z, a, b)){
			
			//look at 4 adjacent for access point
			var accessPoints = 0;
			for(var i=1; i<5; i++){
				if(i == 1){ aa = a; bb = b - 1; }
				if(i == 2){ aa = a + 1; bb = b; }
				if(i == 3){ aa = a; bb = b + 1; }
				if(i == 4){ aa = a - 1; bb = b; }
				
				if(inBounds(aa, bb)){
					if(ww.bmap[z][aa, bb] != imgBlockIron){

						accessPoints ++;
					}
				}
			}
			
			if(accessPoints == 0){ return false; }
		}
		
	}}
	
	
	return true;
}