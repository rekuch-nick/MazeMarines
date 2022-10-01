image_xscale = 4; image_yscale = 4;

waitingForNumber = false;
waitingForDirection = false;
waitingForNumber = false;
equipping = -1;
using = -1;
spl = noone;

waitingSpell = "";
selling = false;
o = noone;
if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorShop){ selling = true; }

itemNames = [];
itemActions = [];
itemPrice = [];

itemNames[0] = "";
itemActions[0] = "";
itemPrice[0] = 0;

var j=0;
for(var i=0; i<30; i++){
	if(pc.inventory[i] != noone){
		itemNames[j] = pc.inventory[i].nam;
		itemActions[j] = i;
		itemPrice[j] = 0;
		j ++;
	}
}
answer = "";

if(j > 0){
	createMenu("Inventory:", "bag", "left-", "", itemNames, itemActions, itemPrice);
} else {
	
}
