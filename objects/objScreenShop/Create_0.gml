image_xscale = 4; image_yscale = 4;

msg = "Welcome to the store.";

inventory = ["Lantern", "Portable Hole", "Bug Spray", "Healing Potion"];
priceMod = 5;


if(ds_list_size(pc.keyItemsLost) > 0){
	var itm = ds_list_find_value(pc.keyItemsLost, ds_list_size(pc.keyItemsLost)-1);
	inventory[array_length(inventory)] = itm;
}




triedToBuyWhileFull = false;
cannotAfford = false;
justBought = false;

var full = !playerHasInventorySpace();
var i = 0;
for(i=0; i<array_length(inventory); i++){
	inventory[i] = getItem(inventory[i]);
	priceArray[i] = inventory[i].worth * priceMod;
	if(full){ priceArray[i] = pc.coins + 1; }
	var nl = string_length(inventory[i].nam);
	var dn = 40 - nl;
	var s = string(i+1) + "] " + inventory[i].nam;
	for(var j=0; j<dn; j++){ s += "."; }
	listingArray[i] = s + string(priceArray[i]) + "g";
	actionArray[i] = i;
}
listingArray[i] = "0] Actually, I have something to sell you."
actionArray[i] = "sell"; priceArray[i] = 0;


hasBought = false;
answer = "";


createMenu("What can I get you?", "shop", "down1", "number", listingArray, actionArray, priceArray);


	
	

