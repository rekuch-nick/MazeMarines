function combatTreasure(plus){
	
	if(!playerHasInventorySpace()){ return noone; }
	
	var roll = irandom_range(1, 100) + pc.itemFindCD + plus;
	if(roll < 95){
		pc.itemFindCD ++;
		return noone;
	} else {
		pc.itemFindCD = 0;
		var z = pc.zSpot;
		var rMin = 0 + floor(z / 5);
		var rMax = 4 + floor(z / 3);
		var r = irandom_range(rMin, rMax);
		var t = getItem("Lucky Coin");
		if(r == 1){ t = getItem("Portable Hole"); }
		if(r == 2){ t = getItem("Bezoar"); }
		if(r == 3){ t = getItem("Deflection Ring"); }
		if(r == 4){ t = getItem("Mirror Charm"); } ////from start
		if(r == 5){ t = getItem("Lantern"); } /////3
		if(r == 8){ t = getItem("Titan Glove"); } /////6
		if(r == 9){ t = getItem("Healing Potion"); } //////9
		if(r == 10){ t = getItem("Titan Belt"); } ///////12
		if(r == 11){ t = getItem("Mage Staff"); } ///////15
		
		return t;
	}
	
	
	return noone;
}