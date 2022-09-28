function worldGenFloorH(t, removeWall, yStart, thick, z){
	
	var b = yStart;
	
	for(var a=0; a<17; a++){
		
		if(inBounds(a, b)){
			fmap[z][a, b] = t;
			if(removeWall){ if(bmap[z][a, b] == imgBlock01){ bmap[z][a, b] = noone; } }
		}
		
		var bMod = choose(1, -1, 0, 0);
		if(bMod != 0){
			b += bMod;
			if(inBounds(a, b)){
				fmap[z][a, b] = t;
				if(removeWall){ if(bmap[z][a, b] == imgBlock01){ bmap[z][a, b] = noone; } }
			}
		}
		
		for(var bb=b+1; bb<=b+thick; bb++){
			if(inBounds(a, bb)){
				fmap[z][a, bb] = t;
				if(removeWall){ if(bmap[z][a, bb] == imgBlock01){ bmap[z][a, bb] = noone; } }
			}
		}
	}
	
	
}