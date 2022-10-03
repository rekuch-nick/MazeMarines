function spawnGoblinTreasure(){
	var aa = pc.xSpot; var bb = pc.ySpot; var z = pc.zSpot;
	
	var tries = clamp(z, 20, 50);
	var n = 2;
	while(tries < 50 && n > 0){
		tries ++;
		var a = aa + irandom_range(-2, 2);
		var b = bb + irandom_range(-2, 2);
		
		if(inBounds(a, b) && ww.bmap[z][a, b] == noone){
			
			if(ww.pmap[z][a, b] == imgCoin3){
				var t = choose(imgCoin3, imgCoin3, imgCoin3, imgKey, imgKeyTwo, imgCoin10);
				ww.pmap[z][a, b] = t;
			}
			
			if(ww.pmap[z][a, b] == imgCoin2){
				var t = choose(imgCoin3, imgCoin3, imgCoin4, imgCoin5);
				ww.pmap[z][a, b] = t;
			}
			
		
			if(ww.pmap[z][a, b] == imgCoin){
				var t = choose(imgCoin2, imgCoin2, imgCoin2, imgCoin3);
				ww.pmap[z][a, b] = t;
			}
		
			if(ww.pmap[z][a, b] == noone){
				var t = choose(imgCoin, imgCoin, imgCoin, imgCoin2, imgCoin3);
				ww.pmap[z][a, b] = t;
			}
			
			
			
		}
		
	}

}