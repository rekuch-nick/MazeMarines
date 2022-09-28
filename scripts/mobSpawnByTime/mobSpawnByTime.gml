function mobSpawnByTime(){
	
	if(pc.zSpot == 0){ return; }
	
	var t = objMobGoon;
	if(pc.zSpot > 1 && irandom_range(1, 8) == 1){ t = objMobGoon2; }
	
	
	var tries = 0;
	while(tries < 100){
		tries ++;
		
		var a = irandom_range(0, 16);
		var b = irandom_range(0, 12);
		var z = pc.zSpot;
		var dis = abs(pc.xSpot - a) + abs(pc.ySpot - b);
		
		if(ww.bmap[z][a, b] == noone && dis >= 2){
			if(ww.mmap[z][a, b] == noone){ if(a != pc.xSpot || b != pc.ySpot){
				var f = ww.fmap[z][a, b];
				if(f != imgStairDown && f != imgStairUp && f != imgStairDownLocked && f != imgFloorSwitchUp && f != imgFloorSafe && f != imgFloorGate01){
					if(f != imgFloorWater){
						ww.mmap[z][a, b] = instance_create_depth(a * 64, b * 64, -5000, t);
						ww.mmap[z][a, b].xSpot = a;
						ww.mmap[z][a, b].ySpot = b;
						ww.mmap[z][a, b].zSpot = z;
				
						return;
					}
				}
			}}
		}
		
	}
	
	
	
}