function playerHasInventorySpace(){
	
	for(var i=0; i<30; i++){
		if(pc.inventory[i] == noone){ return true; }
	}
	
	
	return false;
}