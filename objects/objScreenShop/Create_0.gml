image_xscale = 4; image_yscale = 4;

inventory = ["Lantern", "Bezoar", "Portable Hole", "Bug Spray"];
priceMod = 5;

triedToBuyWhileFull = false;
cannotAfford = false;
justBought = false;



for(var i=0; i<array_length(inventory); i++){
	inventory[i] = getItem(inventory[i]);
}

