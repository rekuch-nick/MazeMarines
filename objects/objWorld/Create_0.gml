room_speed = 30;
randomize();
draw_set_font(fntPlain);
rollWorld = false;
seed = 1;
frameCD = 0;


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






bag = instance_create_depth(1098, 740, -7500, objWidgetBag);


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

instance_create_depth(0, 0, -8000, objScreenTitle);