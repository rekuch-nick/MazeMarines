image_xscale = 4; image_yscale = 4;


msg = "Welcome to Locksmith!"
keyPrice = 50;
hasBought = false;

if(pc.coins < keyPrice){
	msg = "Welcome to Locksmith!\n\nCome back once you have "+string(keyPrice)+" coins and I can help you\nout.";
}

answer = "";

if(pc.coins >= keyPrice){
	createMenu("Can I interest you in a single-use key? They only cost " + string(keyPrice) + " coins each.", 
		"shop", "down1", "y/n", ["Yes", "No"], ["y", "n"], [keyPrice, 0]);
}
