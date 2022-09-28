if(keyboard_check_pressed(vk_enter)){
	room_speed = 150;
	
}

if(over){ if(overCD > 0){ overCD --; return; } else {
	with(objCombatUnit){ shotCD = 10; }
	pc.xpToGain += xp;
	if(xpGainedTotal == -1){ 
		//can put one time end of combat events here, but this whole thing should really be refactored
		xpGainedTotal = xp; 
		
		var n = 0;
		if(ww.mmap[pc.zSpot][pc.xSpot, pc.ySpot].sprite_index == imgGoonWater){ n = -1000; }
		if(ww.mmap[pc.zSpot][pc.xSpot, pc.ySpot].sprite_index == imgGoon2){ n = 10; }
		itemFound = combatTreasure(n);
		if(itemFound != noone){ playerGainItem(itemFound.nam); }
		
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			if(pc.party[i].item != noone && pc.party[i].item.wearEffect == "Gold Find"){
				gpGain ++;
			}
		}}
		
	}
	xp = 0;
	if(gp > 0){ gpGain += floor(gp) + irandom_range(0, 1); }
	gp = 0;
	
	
	with(objScreenSpell){ instance_destroy(); }
	pc.unitSelected = -1;
	

}}
if(over && overCD < 1 && (keyboard_check_pressed(vk_enter) 
		|| escapePressed()
		|| arrowPressed()
		|| letterPressed() == "Y"
		|| letterPressed() == "N"
		)){
	with(objCombatUnit){ instance_destroy(); }
	pc.coins += gpGain;
	room_speed = 30;
	
	if(ww.mmap[pc.zSpot][pc.xSpot, pc.ySpot].sprite_index == imgBoss01){
		if(playerNeedsKeyItem("Silver Triangle")){ 
			worldGenReplaceBlockAllAndClear(ww.triangleFloor, imgBlockFutureSpecChest, imgSpecChest);
		}
		ww.bossOneDown = true;
	}
	instance_destroy(ww.mmap[pc.zSpot][pc.xSpot, pc.ySpot]);
	ww.mmap[pc.zSpot][pc.xSpot, pc.ySpot] = noone;
	
	
	instance_destroy();
}



if(lose){ if(overCD > 0){ overCD --; return; } else {
	with(objCombatUnit){ instance_destroy(); }
	with(objScreenSpell){ instance_destroy(); }
	pc.unitSelected = -1;
}}
if(lose && overCD < 1 && keyboard_check_pressed(vk_enter)){
	with(objCombatUnit){ instance_destroy(); }
	pc.coins = 0;
	room_speed = 30;
	pc.xSpot = 10; pc.x = 10*64;
	pc.ySpot = 10; pc.y = 10*64;
	playerMoveFloor(-pc.zSpot);
	for(var i=0; i<5; i++){ 
		pc.party[i].hp = 30;
	}
	instance_destroy();
}

if(image_alpha < 1){ image_alpha += .05; }


if(image_alpha >= 1 && !started){
	//spawn player party
	for(var i=0; i<7; i++){ if(pc.party[i] != noone){
		var o = instance_create_depth(14*64, (2+(i*2))*64, -8000, objCombatUnit);
		o.sprite_index = pc.party[i].img;
		o.hp = pc.party[i].hp;
		o.hpMax = pc.party[i].hpMax;
		o.xp = pc.party[i].xp;
		o.face = -1;
		o.aly = 1;
		o.playerIndex = i;
		var c = pc.party[i].class;
		var l = pc.party[i].xpLevel[c];
		var temp = characterBaseCombatStats(c, l);
		o.shotCDMax = temp.shotCDMax;
		o.shotCluster = temp.shotCluster;
		o.shotClusterMax = temp.shotClusterMax;
		o.shotClusterCD = temp.shotClusterCD;
		o.shotPowerMin = temp.shotPowerMin;
		o.shotPowerMax = temp.shotPowerMax;
		o.ySpread = temp.ySpread;
		o.limitGainMin = temp.limitGainMin;
		o.limitGainMax = temp.limitGainMax;
		o.aoePlus = temp.aoePlus;
		o.limit = temp.limit;
		o.shotType = temp.shotType;
		o.magicPower = temp.magicPower;
	
	

		o.shotCD = o.shotCDMax;
		
		
		
		
		pcc[i] = o;
	}}
	
	
	mobSpawnForCombat();
	started = true;
}



if(started){
	var anyFoes = false;
	var anyAllies = false;
	with(objCombatUnit){ 
		if(aly == -1){ anyFoes = true; } 
		if(aly == 1){ anyAllies = true; } 
	}
	if(!anyFoes){
		with(objShot){ instance_destroy(); }
		over = true;
	} else if (!anyAllies) {
		with(objShot){ instance_destroy(); }
		lose = true;
	} else {
		//combat over time
		
		with(objCombatUnit){
			if(aly == 1 && irandom_range(1, 60) == 1){
				pc.party[playerIndex].limit += irandom_range(limitGainMin, limitGainMax);
			}
			//if(bleed > 0){ if(irandom_range(1, 100) < bleed){ hp --; } }
			
		}
		
		
		
	}
}



