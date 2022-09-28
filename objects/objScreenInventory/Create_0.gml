image_xscale = 4; image_yscale = 4;

waitingForNumber = false;
waitingForDirection = false;
equipping = false;
waitingSpell = "";
selling = false;
o = noone;
if(ww.fmap[pc.zSpot][pc.xSpot, pc.ySpot] == imgFloorShop){ selling = true; }