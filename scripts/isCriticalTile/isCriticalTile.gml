function isCriticalTile(z, a, b){
	
	if(ww.fmap[z][a, b] == imgFloorSwitchUp){ return true; }
	//if(ww.fmap[z][a, b] == imgStairDown){ return true; }
	//if(ww.fmap[z][a, b] == imgStairDownLocked){ return true; }
	
	return false;
}