if(instance_number(objMenu)){ return; }


if(answer == "y"){
	pc.keysForSale --;
	pc.keys ++;
	pc.coins -= keyPrice;
	keyPrice = clamp(keyPrice - 5, 25, keyPrice);
	
	if(pc.keysForSale > 0){
		createMenu("Great! Can I interest you in another at a discount? Now only " + string(keyPrice) + " coins for a limited time!", 
			"shop", "down1", "y/n", ["Yes", "No"], ["y", "n"], [keyPrice, 0]);
	} else {
		instance_destroy(); return;
	}
//} else if (answer == "n") {
	
} else if(anyPressed()){
	instance_destroy();
}


/*
if(arrowPressed() != noone || keyboard_check_pressed(vk_enter) || letterPressed() == "N" || keyboard_check_pressed(vk_escape)){
	instance_destroy();
}


if(letterPressed() == "Y" && pc.coins >= keyPrice && pc.keys < 99){
	pc.coins -= keyPrice;
	pc.keys ++;
	hasBought = true;
}*/