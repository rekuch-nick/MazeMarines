function worldGenReplaceBlock(z, t1, t2, n){
	var tries = 0;
	while(tries < 1000 && n > 0){
		tries ++;
		var a = irandom_range(0, 16);
		var b = irandom_range(0, 12);
		
		if(ww.bmap[z][a, b] == t1){
			ww.bmap[z][a, b] = t2;
			n --;
		}
	}
}