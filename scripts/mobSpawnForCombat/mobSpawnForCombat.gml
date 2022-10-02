function mobSpawnForCombat(){
	var z = pc.zSpot;
	
	var number = irandom_range(1, 8 + floor(z / 2));
	//for(var i=0; i<z/2; i++){ number += irandom_range(0, 2); }
	var big = 0;
	if(z > 5 && irandom_range(1, 6) == 1){ big++; }
	
	mobList = [getCommonMob(), getUncommonMob(), getUncommonMob(), getUncommonMob()];
	maxKinds = 1;
	if(z > 5 && irandom_range(1, 4) == 1){ maxKinds=2; }
	if(z > 10 && irandom_range(1, 2) == 1){ maxKinds=2; }
	if(z > 10 && irandom_range(1, 4) == 1){ maxKinds=3; }
	
	
	var typ = ww.mmap[pc.zSpot][pc.xSpot, pc.ySpot].sprite_index;
	var spec = noone;
	
	if(typ == imgGoonWater){ mobList = [objCombatMobGoonWater, objCombatMobGoonWater, objCombatMobGoonWater, objCombatMobGoonWater]; }
	if(typ == imgGoon2){ big += irandom_range(1, 6); }
	if(typ == imgBoss01){ spec = objCombatMobBoss1; big = 0; number = 14; mobList = [getCommonMob(), getCommonMob(), getCommonMob(), getCommonMob()]; }
	
	
	for(var i=0; i<number; i++){
		var m = mobList[0];
		
		var a = irandom_range(64, (64 * 6));
		var b = irandom_range(64, (64 * 11));
		
		if(i == 0 && spec != noone){ m = spec; a = 64 * 3; b = room_height / 2; }
		else if(big > 0){ big --; m = objCombatMobGoon2; }
		else if(irandom_range(0, 2) == 0){ m = mobList[irandom_range(1, maxKinds)]; }
		instance_create_depth(a, b, -8000, m);
		
	}

	
	/*
		
	var z = pc.zSpot;
	spec = noone;
	mobList = [objCombatMobGoon, objCombatMobGoon, objCombatMobGoonBlade]
	
	number = irandom_range(1, 2) + irandom_range(0, 2) + irandom_range(0, 2);
	
	if(z == 2){
		mobList = [objCombatMobGoon, objCombatMobGoon, objCombatMobGoonBlade];
		number ++;
		if(typ == imgGoon2){ 
			spec = objCombatMobGoon2;
			mobList = [objCombatMobGoon, choose(objCombatMobGoon, objCombatMobGoonBlade), objCombatMobGoon2];
		}
	} else if(z == 3) {
		mobList = [objCombatMobGoon, objCombatMobGoon, choose(objCombatMobGoonBlade, objCombatMobAssassian)];
		number ++;
		if(typ == imgGoon2){ 
			spec = objCombatMobGoon2;
			mobList = [objCombatMobGoon, choose(objCombatMobGoon, mobList[2]), objCombatMobGoon2];
		}
	} else if(z == 4) {
		mobList = [objCombatMobGoon, choose(objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun), objCombatMobGoon];
		number ++;
		if(typ == imgGoon2){ 
			spec = objCombatMobGoon2;
			mobList = [objCombatMobGoon, mobList[1], objCombatMobGoon2];
		}
	} else if (z > 1) {
		mobList = [
			choose(objCombatMobGoon, objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun, objCombatMobGoonHealTank),
			choose(objCombatMobGoon, objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun, objCombatMobGoonHealTank),
			choose(objCombatMobGoon, objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun, objCombatMobGoonHealTank)
		];
		number += irandom_range(1, z);
	}
	
	
	
	if(typ == imgGoonWater){
		mobList = [objCombatMobGoonWater, objCombatMobGoonWater, objCombatMobGoonWater];
		n = irandom_range(1, 10);
	}
	
	*/

	
}