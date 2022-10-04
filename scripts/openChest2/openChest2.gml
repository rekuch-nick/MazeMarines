function openChest2(z, a, b){
	if(!inBounds(a, b)){ return; }
	
	
	
	var t = imgCoin10;
	if(z == ww.bombFloor){ t = imgBomb2; }
	if(z == ww.boatFloor){ t = imgBoat2; }
	if(z == ww.pickFloor){ t = imgPick2; }
	if(z == ww.medkitFloor){ t = imgMedkit2; }
	if(z == ww.slab1Floor){ t = imgSlab1; }
	if(z == ww.slab2Floor){ t = imgSlab2; }
	if(z == ww.slab3Floor){ t = imgSlab3; }
	
	ww.pmap[z][a, b] = t;
	
	
	ww.bmap[z][a, b] = noone;
}