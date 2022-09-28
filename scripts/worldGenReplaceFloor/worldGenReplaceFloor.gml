function worldGenReplaceFloor(z, t1, t2, n){
	var tries = 0;
	while(tries < 100 && n > 0){
		tries ++;
		var a = irandom_range(0, 16);
		var b = irandom_range(0, 12);
		
		if(ww.fmap[z][a, b] == t1 && ww.bmap[z][a, b] == noone){
			ww.fmap[z][a, b] = t2;
			n --;
		}
	}
	
	return n;
}