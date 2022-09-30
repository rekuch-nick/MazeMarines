function playerInventoryEmpty(){
	for(var i=0; i<array_length(pc.inventory); i++){
		if(pc.inventory[i] != noone){ return false; }
	}
	return true;
}