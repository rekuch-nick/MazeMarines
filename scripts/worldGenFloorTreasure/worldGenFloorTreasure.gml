function worldGenFloorTreasure(z, n){
	var tries = 0;
	while(n > 0 && tries < 1000){
		tries ++;
		var a = irandom_range(0, 16);
		var b = irandom_range(0, 12);
		
		if(ww.bmap[z][a, b] == noone){
			if(ww.pmap[z][a, b] == noone){
				if(ww.fmap[z][a, b] == imgFloor01){
					var r = irandom_range(1, 100);
					var r2 = r + z*4;
					var t = imgCoin;
					if(r2 >= 30){ t = imgCoin2; }
					if(r2 >= 60){ t = imgCoin3; }
					if(r2 >= 90){ t = imgCoin4; }
					if(r2 >= 120){ t = imgCoin5; }
				
					if(r >= 81){ t = imgStimpack; }
					if(r >= 91){ t = imgBook; }
				
				
					ww.pmap[z][a, b] = t;
					n --;
				}
			}
		}
	}
	return n;
}