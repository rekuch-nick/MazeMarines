image_xscale = 4; image_yscale = 4;


msg = "Welcome to Key Store!"
keyPrice = 60;
hasBought = false;

answer = "";

if(pc.keysForSale > 0){
	if(pc.coins < keyPrice){
		msg = "Welcome to Key Store!\n\nCome back once you have "+string(keyPrice)+" coins and I can help you\nout.";
	}

	

	if(pc.coins >= keyPrice){
		createMenu("Can I interest you in a single-use key? They only cost " + string(keyPrice) + " coins each.", 
			"shop", "down1", "y/n", ["Yes", "No"], ["y", "n"], [keyPrice, 0]);
	}
} else {
	msg = "This is the Key Store all right, but I'm out of inventory. Good luck out there.";
}

msg = stringInsertBreaks(msg, 45);
