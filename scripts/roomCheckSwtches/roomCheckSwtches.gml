function roomCheckSwtches(){
	var z = pc.zSpot;
	
	var n = 0;
	for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
		if(ww.fmap[z][a, b] == imgFloorSwitchUp){ n ++; }
	}}
	
	if(n <= 0){
		for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
			if(ww.fmap[z][a, b] == imgStairDownLocked){
				ww.fmap[z][a, b] = imgStairDown;
			}
		}}
	}
}