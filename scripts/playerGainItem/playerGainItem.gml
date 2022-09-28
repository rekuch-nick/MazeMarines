function playerGainItem(n){
	if(n == noone){ return false; }
	for(var i=0; i<30; i++){
		if(pc.inventory[i] == noone){
			pc.inventory[i] = getItem(n);
			return true;
		}
	}
	return false;
}