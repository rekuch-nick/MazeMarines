room_speed = 30;
randomize();
draw_set_font(fntPlain);
rollWorld = false;
seed = 1;
frameCD = 0;


ww.Lmnu = -5990; // layer menu
ww.Lscn = -5000; // layer screens
ww.Leff = -4000; // layer effects
ww.Lcmb  = -3000; // layer combat units
ww.Lcsn = -2999; // layer combat screen
ww.Lmmb = -1000; // layer map units
depth = -100;


classSprites[0] = imgMarine;
classSprites[1] = imgApprentice;
classSprites[2] = imgMechanic;
classSprites[3] = imgMedic;
classSprites[4] = imgHeavy;
classSprites[5] = imgScribe;
classSprites[6] = imgGasDoc;
classSprites[7] = imgKnight;
classSprites[8] = imgCyborg;
classSprites[9] = imgLaserTech;
classSprites[10] = imgMGun;
classSprites[11] = imgIceMage;
classSprites[12] = imgBard;
classSprites[13] = imgGish;
classSprites[14] = imgSprayer;
classSprites[15] = imgSniper;
classSprites[16] = imgCommando;
classSprites[17] = imgMage;
classSprites[18] = imgDemo;
classSprites[19] = imgAscendant;






bag = instance_create_depth(1098, 740, ww.Lscn, objWidgetBag);


//create blank world
for(var z=0; z<21; z++){
	for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
		fmap[z][a, b] = noone;
		bmap[z][a, b] = noone;
		pmap[z][a, b] = noone;
		mmap[z][a, b] = noone;
		gmap[z][a, b] = noone;
	}}
}

instance_create_depth(0, 0, ww.Lmnu+1, objScreenTitle);