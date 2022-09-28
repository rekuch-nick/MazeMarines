function worldGenReplaceBlockAll(z, t1, t2){
	
	for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
		if(ww.bmap[z][a, b] == t1){
			ww.bmap[z][a, b] = t2;
		}
	}}
	
}