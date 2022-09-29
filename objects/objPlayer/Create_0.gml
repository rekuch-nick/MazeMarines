image_xscale = 4; image_yscale = 4;
debug = false;
advancedClasses = false;

xSpot = floor(x / 64);
ySpot = floor(y / 64);
zSpot = 0;
//ww.mmap[zSpot][xSpot, ySpot] = pc;
face = 1;
ally = 1;

itemFindCD = 0;

pressed = noone;
directionAction = "";
inBoat = false;
xpToGain = 0;

spellInputCD = 0;
/*
hp = 200;
hpMax = 200;
hpRegen = 1;

mp = 20;
mpMax = 20;
mpRegen = 1;

xp = 0;
rank[1] = 0; rank[2] = 0; rank[3] = 0; rank[4] = 0; rank[5] = 0;

minPow = 1;
maxPow = 10;
*/

inventoryCursor = 0;
for(var i=0; i<30; i++){ inventory[i] = noone; }
inventory[0] = getItem("Mission Briefing");
inventory[1] = getItem("Instructions");
//inventory[2] = getItem("Mage Staff");
//inventory[3] = getItem("Silver Triangle");
//inventory[3] = getItem("Mirror Charm");



for(var i=0; i<10; i++){ party[i] = noone; }



combatSpeed = 60; 
 
unitSelected = -1; 



coins = 0;
bombs = 0;
keys = 0;
medkits = 0;
picks = 0;
boats = 0;


steps = 3;
stepsMax = 3;

waitCD = 0;
combatCD = 0;