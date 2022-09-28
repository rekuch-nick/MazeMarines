function gateExistsOnFloor(z){
	for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
		if(ww.bmap[z][a, b] == imgBlockGate){ 
			return true; }
	}}
	return false;
}