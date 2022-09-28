function worldGenReplaceFloorAll(z, t1, t2){
	
	for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
		if(ww.fmap[z][a, b] == t1){
			ww.fmap[z][a, b] = t2;
		}
	}}
	
}