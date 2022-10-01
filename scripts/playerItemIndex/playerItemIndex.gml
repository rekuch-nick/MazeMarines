function playerItemIndex(n){
	
	for(var i=0; i<30; i++){
		if(pc.inventory[i] != noone && pc.inventory[i].nam == n){
			return i;
		}
	}
	return -1;
}