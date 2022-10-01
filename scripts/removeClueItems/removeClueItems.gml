function removeClueItems(){
	for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
		var i = ww.pmap[pc.zSpot][a, b];
		if(i == imgrBed
						|| i == imgrCandle
						|| i == imgrDeck
						|| i == imgrDictionary
						|| i == imgrEgg
						|| i == imgrMap
						|| i == imgrPiano
						|| i == imgrSoap
						|| i == imgrSponge ){
				
			ww.pmap[pc.zSpot][a, b] = noone;
		}
	}}

}