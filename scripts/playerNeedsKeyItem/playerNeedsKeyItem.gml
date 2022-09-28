function playerNeedsKeyItem(n){
	if(playerHasItem(n)){ return false; }
	if(n == "Silver Triangle" && gateExistsOnFloor(ww.triangleFloor)){ 
		return false; }
	return true;
}