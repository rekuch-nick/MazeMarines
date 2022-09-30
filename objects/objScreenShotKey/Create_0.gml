image_xscale = 4; image_yscale = 4;

keyPrice = 15;
hasBought = false;

answer = "";

if(pc.coins >= keyPrice){
	createMenu("Can I interest you in a single-use key? They only cost " + string(keyPrice) + " coins each.", 
		"shop", "down1", "y/n", ["Yes", "No"], ["y", "n"], [keyPrice, 0]);
}
