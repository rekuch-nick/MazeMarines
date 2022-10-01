function combatTreasure(plus){
	
	if(!playerHasInventorySpace()){ return noone; }
	
	var roll = irandom_range(1, 100) + pc.itemFindCD + plus;
	if(roll < 95){
		pc.itemFindCD ++;
		return noone;
	} else {
		pc.itemFindCD = 0;
		var z = pc.zSpot;
		var rMin = 0 + floor(z / 3);
		var rMax = 4 + floor(z / 2);
		var r = irandom_range(rMin, rMax);
		var t = getItem("Lucky Coin");
		if(r == 1){ t = getItem("Portable Hole"); }
		if(r == 2){ t = getItem("Bezoar"); }
		if(r == 3){ t = getItem("Deflection Ring"); }
		if(r == 4){ t = getItem("Mirror Charm"); } ////from start
		if(r == 5){ t = getItem("Lantern"); } 
		if(r == 8){ t = getItem("Titan Glove"); } 
		if(r == 9){ t = getItem("Healing Potion"); } 
		if(r == 10){ t = getItem("Rod of Fireballs"); } 
		if(r == 11){ t = getItem("Titan Belt"); } 
		if(r == 12){ t = getItem("Mage Staff"); } 
		
		return t;
	}
	
	
	return noone;
}