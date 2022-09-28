function playerHasItem(n){
	for(var i=0; i<30; i++){ if(pc.inventory[i] != noone) {
		if(pc.inventory[i].nam == n){ return true; }
	}}
	return false;
}