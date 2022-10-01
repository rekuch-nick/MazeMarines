function worldGenFloorV(t, removeWall, xStart, thick, z){
	
	var a = xStart;
	
	for(var b=0; b<13; b++){
		
		if(inBounds(a, b)){
			if(ww.fmap[z][a, b] == imgFloor01){ fmap[z][a, b] = t; }
			if(removeWall){ if(bmap[z][a, b] == imgBlock01){ bmap[z][a, b] = noone; } }
		}
		
		var aMod = choose(1, -1, 0, 0);
		if(aMod != 0){
			a += aMod;
			if(inBounds(a, b)){
				if(ww.fmap[z][a, b] == imgFloor01){ fmap[z][a, b] = t; }
				if(removeWall){ if(bmap[z][a, b] == imgBlock01){ bmap[z][a, b] = noone; } }
			}
		}
		
		for(var aa=a+1; aa<=a+thick; aa++){
			if(inBounds(aa, b)){
				if(ww.fmap[z][aa, b] == imgFloor01){ fmap[z][aa, b] = t; }
				if(removeWall){ if(bmap[z][aa, b] == imgBlock01){ bmap[z][aa, b] = noone; } }
			}
		}
	}

}