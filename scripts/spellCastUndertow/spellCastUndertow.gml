function spellCastUndertow(tar){
	var z = pc.zSpot;
	var aa = 0; var bb = 0;
	if(tar == 1){ bb --; }
	if(tar == 2){ aa ++; }
	if(tar == 3){ bb ++; }
	if(tar == 4){ aa --; }
	
	var anyChange = false;
	
	do {
		anyChange = false;
	
		for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
		
			var ta = a + aa; var tb = b + bb;
		
			var okF = false;
			var okM = false;
			
			if(inBounds(ta, tb)){
				if(ww.fmap[z][a, b] == imgFloorWaterBoat || ww.fmap[z][a, b] == imgFloorWaterBoat2 || ww.fmap[z][a, b] == imgFloorLavaBoat){
					if(ww.fmap[z][ta, tb] == imgFloorWater || ww.fmap[z][ta, tb] == imgFloorLava){
						if(ww.bmap[z][ta, tb] == noone && ww.bmap[z][a, b] == noone){
							okF = true;
						}
					}
				}
				
				if(ww.mmap[z][a, b] != noone && (ww.fmap[z][a, b] == imgFloorWater || ww.fmap[z][a, b] == imgFloorLava)){
					if(ww.mmap[z][ta, tb] == noone && (ww.fmap[z][ta, tb] == imgFloorWater || ww.fmap[z][ta, tb] == imgFloorLava)){
						if(ww.bmap[z][ta, tb] == noone && ww.bmap[z][a, b] == noone){
							if(pc.xSpot != ta || pc.ySpot != tb){
								okM = true;
							}
						}
					}
				}
			}
			
			if(okF){
				var temp = ww.fmap[z][a, b];
				ww.fmap[z][a, b] = ww.fmap[z][ta, tb];
				ww.fmap[z][ta, tb] = temp;
				anyChange = true;
				instance_create_depth(a*64, b*64, ww.Leff, effWaves);
			}
			
			if(okM){
				ww.mmap[z][a, b].xSpot = ta; ww.mmap[z][a, b].ySpot = tb;
				ww.mmap[z][a, b].x = ta*64; ww.mmap[z][a, b].y = tb*64;
				ww.mmap[z][ta, tb] = ww.mmap[z][a, b];
				ww.mmap[z][a, b] = noone;
				anyChange = true;
				instance_create_depth(a*64, b*64, ww.Leff, effWaves);
			}
		
		
		
		}}
		
	} until (anyChange == false);
	
}