function openChest(z, a, b){
	if(!inBounds(a, b)){ return; }
	
	var r = irandom_range(0, 4);
	var t = imgKeyTwo;
	if(r == 1){ t = imgBomb; }
	if(r == 2){ t = imgMedkit; }
	if(r == 3){ t = imgPick; }
	if(r == 4){ t = imgBoat; }
	
	ww.pmap[z][a, b] = t;
	
	
	ww.bmap[z][a, b] = noone;
}