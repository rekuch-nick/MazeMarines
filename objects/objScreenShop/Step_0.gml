


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
}