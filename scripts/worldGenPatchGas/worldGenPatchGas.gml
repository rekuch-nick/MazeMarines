function worldGenPatchGas(z, t, n){
	var tries = 0;
	while(n > 0 && tries < 1000){
		tries ++;
		var a = irandom_range(1, 16);
		var b = irandom_range(1, 12);
		var w = irandom_range(3, 5);
		var dis = abs(pc.xSpot - a) + abs(pc.ySpot - b);
		if(dis < 5){ continue; }
		
		for(var aa=a-w; aa<=a+w; aa++){ for(var bb=b-w; bb<=b+w; bb++){
			if(irandom_range(0, 3) == 1){ continue; }
			if(inBounds(aa, bb) && ww.gmap[z][aa, bb] == noone){
				ww.gmap[z][aa, bb] = t;
			}
		}}
		n --;
	}
	return n;
}