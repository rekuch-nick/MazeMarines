if(instance_number(objMenu)){ return; }


if(answer == "sell"){
	var j=0;
	for(var i=0; i<array_length(pc.inventory); i++){ if(pc.inventory[i] != noone){
		actionArr[j] = "pwn" + string(i); priceArr[j] = 0;
		invArr[j] = pc.inventory[i].nam;
		var nl = string_length(invArr[j]);
		var dn = 40 - nl;
		for(var k=0; k<dn; k++){ invArr[j] += "."; }
		invArr[j] += string(pc.inventory[i].worth) + "g";
		
		j ++;
	}}
	createMenu("What do you want to sell?", "", "", "", invArr, actionArr, priceArr);
	answer = "";
} else if (answer != "" && string_char_at(answer, 0) == "p") {
	var i = string_delete(answer, 1, 1);
	i = string_delete(i, 1, 1);
	i = string_delete(i, 1, 1);
	
	pc.coins += pc.inventory[i].worth;
	playerLoseItem(pc.inventory[i].nam);
	
	if(playerInventoryEmpty()){
		createMenu("What can I get you?", "shop", "down1", "number", listingArray, actionArray, priceArray);
	} else {
		var j=0; actionArr = []; priceArr = []; invArr = [];
		for(var i=0; i<array_length(pc.inventory); i++){ if(pc.inventory[i] != noone){
			actionArr[j] = "pwn" + string(i); priceArr[j] = 0;
			invArr[j] = pc.inventory[i].nam;
			var nl = string_length(invArr[j]);
			var dn = 40 - nl;
			for(var k=0; k<dn; k++){ invArr[j] += "."; }
			invArr[j] += string(pc.inventory[i].worth) + "g";
		
			j ++;
		}}
		answer = "";
		createMenu("Anything else to sell?", "sell", "", "", invArr, actionArr, priceArr);
	}
	
	
	
} else if (answer != "" && answer != "no"){
	msg = "Enjoy your new " + string(inventory[answer].nam) + ".";
	pc.coins -= inventory[answer].worth * priceMod;
	playerGainItem(inventory[answer].nam);
	answer = "";
	var full = !playerHasInventorySpace();
	for(i=0; i<array_length(inventory); i++){ if(full){ priceArray[i] = pc.coins + 1; } }
	
	createMenu("What can I get you?", "shop", "down1", "number", listingArray, actionArray, priceArray);
} else if (anyPressed()){
	instance_destroy();
}






/*
if(arrowPressed() != noone || keyboard_check_pressed(vk_enter) || letterPressed() == "N" || keyboard_check_pressed(vk_escape)){
	instance_destroy();
}

if(letterPressed() == "I"){
	instance_create_depth(0, 0, -8999, objScreenInventory);
	instance_destroy();
}


if(numberPressedAny() != noone && numberPressedAny() != 0){
	var np = numberPressedAny() - 1;
	if(array_length(inventory) > np){ 
		var p = ceil(inventory[np].worth * priceMod);
		if(pc.coins >= p){
			if(playerHasInventorySpace()){
				pc.coins -= p;
				playerGainItem(inventory[np].nam);
				justBought = true;
			} else {
				triedToBuyWhileFull = true;
			}
		
		} else {
			cannotAfford = true;
		}
	}
}*/