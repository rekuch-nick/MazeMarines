function playerStep(xMove, yMove){
	if(!inBounds(xSpot+xMove, ySpot+yMove)){ return; }
	var xOld = xSpot; var yOld = ySpot;
	
	var a = xSpot + xMove;
	var b = ySpot + yMove;
	var z = pc.zSpot;
	
	if(xMove != 0){ face = xMove; }
	
	
	if(ww.bmap[z][a, b] != noone){ 
		//var s = instance_create_depth(pc.x + 32, pc.y, ww.Leff, objEffect);
		//s.text = "ANTIVENOM";
		
		var t = ww.bmap[z][a, b];
		if(t == imgBlockChest || t == imgBlockChest2 || t == imgSpecChest){
			if(xMove > 0){ pc.x += 32; }
			if(xMove < 0){ pc.x -= 32; }
			if(yMove > 0){ pc.y += 32; }
			if(yMove < 0){ pc.y -= 32; }
			
			if(pc.keys < 1){
				var s = instance_create_depth(pc.x + 32, pc.y, ww.Leff, objEffect);
				s.text = "Need A Key";
			} else {
				pc.keys --;
				if(t == imgBlockChest){ openChest(z, a, b); }
				if(t == imgBlockChest2){ openChest2(z, a, b); }
				if(t == imgSpecChest){ openSpecChest(z, a, b); }
			}
		}
		
		/*
		if(ww.bmap[z][a, b] == imgBlockChest && pc.keys > 0){ 
			pc.keys --;
			openChest(z, a, b);
			if(xMove > 0){ pc.x += 32; }
			if(xMove < 0){ pc.x -= 32; }
			if(yMove > 0){ pc.y += 32; }
			if(yMove < 0){ pc.y -= 32; }
		}
		
		if(ww.bmap[z][a, b] == imgBlockChest2 && pc.keys > 0){ 
			pc.keys --;
			openChest2(z, a, b);
			if(xMove > 0){ pc.x += 32; }
			if(xMove < 0){ pc.x -= 32; }
			if(yMove > 0){ pc.y += 32; }
			if(yMove < 0){ pc.y -= 32; }
		}
		
		if(ww.bmap[z][a, b] == imgSpecChest && pc.keys > 0){ 
			pc.keys --;
			openSpecChest(z, a, b);
			if(xMove > 0){ pc.x += 32; }
			if(xMove < 0){ pc.x -= 32; }
			if(yMove > 0){ pc.y += 32; }
			if(yMove < 0){ pc.y -= 32; }
		}
		*/
		return; 
	}
	
	
	//var temp = ww.mmap[z][xSpot, ySpot];
	//ww.mmap[z][xSpot, ySpot] = ww.mmap[pc.zSpot][a, b];
	//ww.mmap[pc.zSpot][a, b] = temp;
	
	if(inBoat != noone){
		if(ww.fmap[z][a, b] != imgFloorWater){
			if(ww.fmap[z][xSpot, ySpot] == imgFloorWater){ 
				var t = inBoat == imgBoatInWater ? imgFloorWaterBoat : imgFloorWaterBoat2;
				ww.fmap[z][xSpot, ySpot] = t;
			}
			
			inBoat = noone;
		}
	}
	
	
	xSpot = a;
	ySpot = b;
	
	
	if(xOld != xSpot || yOld != ySpot){
		
		
		if(ww.fmap[pc.zSpot][xOld, yOld] == imgFloorGrass){
			if(ww.mmap[pc.zSpot][xOld, yOld] == noone && irandom_range(0, 1) == 1){
				ww.mmap[pc.zSpot][xOld, yOld] = instance_create_depth(xOld * 64, yOld * 64, ww.Lmmb, objMobGoonSwarm);
			}
		}
		
		timePasses(1);
		
	} else {
		
		/*
		var m = ww.mmap[zSpot][xSpot+xMove, ySpot+yMove];
		if(m != noone){
			if(m.ally == -1 && combatCD < 1){
				characterCombat(pc, m);
				combatCD = 15;
			}
		}*/
	}
}