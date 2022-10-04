image_xscale = 4; image_yscale = 4;
depth = ww.depth-1;
debug = false;
advancedClasses = false;
answer = "";

xSpot = floor(x / 64);
ySpot = floor(y / 64);
zSpot = 0;
//ww.mmap[zSpot][xSpot, ySpot] = pc;
face = 1;
ally = 1;

itemFindCD = 0;

pressed = noone;
directionAction = "";
inBoat = noone;
xpToGain = 0;

spellInputCD = 0;
whoIsCCing = -1;

killsThisFloor = 0;
treasureGoblinSpawned = 0;
spellLearnPriceMod = 150;

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
//inventory[2] = getItem("Healing Potion");
//inventory[2] = getItem("Troll Brace");
//inventory[3] = getItem("Wall Ring");
//inventory[2] = getItem("Mage Staff");
//inventory[3] = getItem("Titan Glove");
//inventory[4] = getItem("Flash Powder");
//inventory[5] = getItem("Fan");


//inventory[3] = getItem("Silver Triangle");
//inventory[3] = getItem("Silver Circle");

inventory[3] = getItem("Granite Slab");
inventory[4] = getItem("Jade Slab");
inventory[5] = getItem("Onyx Slab");

//inventory[3] = getItem("Mirror Charm");
//inventory[3] = getItem("Rod of Fireballs");




for(var i=0; i<10; i++){ party[i] = noone; }



combatSpeed = 60; 

unitSelected = -1; 
usingItem = "";
answer = "";


coins = 0;
bombs = 0;
keys = 0;
medkits = 0;
picks = 0;
boats = 0;

bombType = imgBomb;
pickType = imgPick;
boatType = imgBoat;
medkitType = imgMedkit;


steps = 3;
stepsMax = 3;

waitCD = 0;
combatCD = 0;