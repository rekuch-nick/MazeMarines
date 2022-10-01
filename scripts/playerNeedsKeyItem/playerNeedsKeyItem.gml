function playerNeedsKeyItem(n){
	if(playerHasItem(n)){ return false; }
	if(n == "Silver Triangle" && gateExistsOnFloor(5)){ 
		return true; }
		
	if(n == "Silver Circle" && gateExistsOnFloor(10)){ 
		return true; }
		
	return true;
}