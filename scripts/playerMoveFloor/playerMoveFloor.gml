function playerMoveFloor(d){
	with(objGasDark){ instance_destroy(); }
	
	for(var i=0; i<5; i++){ if(pc.party[i] != noone){
		pc.party[i].aim = 0; //clamp(pc.party[i].aim - 1, 0, pc.party[i].aim);
		pc.party[i].xenograft = 0; //clamp(pc.party[i].xenograft - 1, 0, pc.party[i].xenograft);
		pc.party[i].shield = 0;
	}}
	
	var z = pc.zSpot;	
	
	if(z+d < 0 || z+d >ww.LAST){ return; }
	
	for(var a=0; a<17; a++){ for (var b=0; b<13; b++){
		var m = ww.mmap[z][a, b];
		if(m == pc){
			//ww.mmap[z][a, b] = noone;
		} else if(m != noone){
			ww.mmap[z][a, b] = m.object_index;
			instance_destroy(m);
		}
	}}
	
	pc.zSpot += d;
	z = pc.zSpot;
	//ww.mmap[z][pc.xSpot, pc.ySpot] = pc;
	
	for(var a=0; a<17; a++){ for (var b=0; b<13; b++){
		var m = ww.mmap[z][a, b];
		if(m != noone && m != pc){
			ww.mmap[z][a, b] = instance_create_depth(a*64, b*64, -5000, m);
		} else if (ww.fmap[z][a, b] == imgFloorSpike01) { ww.mmap[z][a, b] = instance_create_depth(a*64, b*64, -5000, objMobGoon2);
		} else if (ww.fmap[z][a, b] == imgFloorSpikeBoss01) { ww.mmap[z][a, b] = instance_create_depth(a*64, b*64, -5000, objMobBoss1); }
	}}
	
	for(var a=0; a<17; a++){ for (var b=0; b<13; b++){
		var m = ww.gmap[z][a, b];
		if(m != noone){
			instance_create_depth(a*64, b*64, -6000, m);
		}
	}}
	
	/*if(pc.zSpot == 0){
		for(var c=1; c<=ww.LAST; c++){
			for(var a=0; a<17; a++){ for (var b=0; b<13; b++){
				ww.mmap[c][a, b] = noone;
			}}
		}
	}*/
}