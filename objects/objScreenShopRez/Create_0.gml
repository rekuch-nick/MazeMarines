image_xscale = 4; image_yscale = 4;

price = clamp(ceil(pc.coins / 5), 0, pc.coins);
answer = "";

phase = "no";
ded = 0;
for(var i=0; i<6; i++){
	if(pc.party[i] != noone && pc.party[i].hp < 1){
		ded ++;
		phase = "need";
	}
}
if(ded > 1){ 
	phase = "needMore"; 
	price = price * ded;
}




if(phase = "need"){
	createMenu("Hold on there, wait a second. Don't go burying that poor lad just yet! He can walk again, for a fee. What do you say, " + string(price) + " coins?", 
		"shop", "down1", "y/n", ["Yes", "No"], ["y", "n"], [price, 0]);
} else if (phase = "needMore"){
	createMenu("Hold on there, wait a second. Don't go burying those poor lads just yet! They can walk again, for a fee. What do you say, " + string(price) + " coins?", 
		"shop", "down1", "y/n", ["Yes", "No"], ["y", "n"], [price, 0]);
}





