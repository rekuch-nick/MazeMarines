function timePasses(n){
	if(n == -1){ n = pc.steps; }
	
	
	pc.steps -= n;
	if(pc.steps <= 0){
		pc.steps = pc.stepsMax;
		mobSpawnByTime();
		
		//bleed: 0, poison: 0, mute: 0, stun: 0,
		//pc.hp = clamp(pc.hp + pc.hpRegen, 0, pc.hpMax);
		for(var i=0; i<7; i++){ if(pc.party[i] != noone){
			var c = pc.party[i];
			
			if(c.hp > 0 && (c.bleed < 1 && c.poison < 1) ){
				var regenFor = 1;
				if(pc.party[i].class == 8 || pc.party[i].xpLevel[8] >= 20){ regenFor = 4; }
				c.hp = clamp(c.hp + regenFor, 0, c.hpMax);
				
				
			}
			
			if(c.hp > 0 && pc.party[i].item != noone){ if(pc.party[i].item.wearEffect == "MP Charge"){
				pc.party[i].mp = clamp(party[i].mp + 1, 0, party[i].mpMax);
			}}
			
			if(c.poison > 0){ c.hp -= ceil(c.hpMax / 20); }
			if(c.bleed > 0){ c.hp --;  }
			if(c.mute > 0){ c.mute --; }
			if(c.stun > 0){ c.stun --; }
			
			
		}}
	}
	
	checkForDead();
}