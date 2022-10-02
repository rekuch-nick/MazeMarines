function worldGenBlocksFromMap(z, m){
	
	for(var b=0; b<13; b++){
		for(var a=0; a<17; a++){
			var t = noone;
			var c = string_char_at(m[b], a+1);
			if(c == "1"){ t = imgBlock01; }
			ww.bmap[z][a, b] = t;
		
		}
	}
	
}