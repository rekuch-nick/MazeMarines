function worldGenTreasureRoom(z, spec){
	var tries = 0;
	while(tries < 100){
		tries ++;
		
		var ok = true;
		var a = irandom_range(1, 15);
		var b = irandom_range(1, 11);
		
		for(var aa=a-1; aa<=a+1; aa++){ for(var bb=b-1; bb<=b+1; bb++){
			if(ww.fmap[z][aa, bb] != imgFloor01){ ok = false; }
			if(ww.pmap[z][aa, bb] != noone){ ok = false; }
			if(ww.bmap[z][aa, bb] != noone && ww.bmap[z][aa, bb] != imgBlock01){ ok = false; }
		}}
		
		if(ok){
			for(var aa=a-1; aa<=a+1; aa++){ for(var bb=b-1; bb<=b+1; bb++){
				ww.bmap[z][aa, bb] = noone;
				ww.fmap[z][aa, bb] = imgFloorSafe;
				
				var t = choose(imgCoin, imgCoin2, imgCoin3);
				if(aa == a && bb == b){ t = spec; }
				ww.pmap[z][aa, bb] = t;
				
				
			}}
			return;
			
		}
	}
}