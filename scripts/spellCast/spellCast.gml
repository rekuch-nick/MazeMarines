function spellCast(spell, casterIndex, tar){
	var tx = pc.xSpot; var ty = pc.ySpot; var z = pc.zSpot;
	if(tar == 1){ ty --; } if(tar == 2){ tx ++; } if(tar == 3){ ty ++; } if(tar == 4){ tx --; }
	var casterLevel = casterIndex == -1 ? 0 : pc.party[casterIndex].xpLevel[pc.party[casterIndex].class];
	var mag = .5;
	if(instance_number(objScreenCombat) > 0){ 
		if(ww.screenCombat.pcc[casterIndex] == noone){ return; }
		mag = ww.screenCombat.pcc[casterIndex].magicPower; 
	} else {
		var o = characterBaseCombatStats(pc.party[casterIndex].class, pc.party[casterIndex].xpLevel[pc.party[casterIndex].class]);
		mag = o.magicPower;
	}
	
	
	for(var i=0; i<array_length(ww.antiMagic[pc.zSpot]); i++){
		if(spell.nam == ww.antiMagic[pc.zSpot][i]){
			spellFizzle();
			if(casterIndex != -1){ pc.party[casterIndex].mp -= spell.cost; }
			pc.unitSelected = -1;
			with(objScreenSpell){ instance_destroy(); }
			return;
		}
	}
	
	if(spell.nam == "Aim"){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			if(pc.party[i].aim < 1){ pc.party[i].aim = 1; }
		}}
		
		notifyMessage("AIM", casterIndex);
	}
	
	if(spell.nam == "AntiVenom"){
		pc.party[tar].poison = 0;
		
		notifyMessage("ANTIVENOM", casterIndex);
	}
	if(spell.nam == "AntiVenom+"){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			pc.party[i].poison = 0;
		}}
		notifyMessage("ANTIVENOM+", casterIndex);
	}
	
	
	if(spell.nam == "Bolts"){
		ww.screenCombat.pcc[casterIndex].shotCDMax = 20;
		ww.screenCombat.pcc[casterIndex].shotCD = 10;
		ww.screenCombat.pcc[casterIndex].shotType = objBoltShot;
		
		notifyMessage("BOLTS", casterIndex);
	}
	if(spell.nam == "Bolts+"){
		ww.screenCombat.pcc[casterIndex].shotCDMax = 20;
		ww.screenCombat.pcc[casterIndex].shotCD = 10;
		ww.screenCombat.pcc[casterIndex].shotType = objBoltShot2;
		
		notifyMessage("BOLTS+", casterIndex);
	}
	
	if(spell.nam == "Bind Wounds"){
		pc.party[tar].bleed = 0;
		
		//var s = instance_create_depth(pc.x + 32, pc.y, ww.Leff, objEffect);
		//s.text = "BIND";
		notifyMessage("BIND", casterIndex);
	}
	if(spell.nam == "Bind Wounds+"){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			pc.party[i].bleed = 0;
		}}
		notifyMessage("BIND+", casterIndex);
	}
	
	if(spell.nam == "Cure"){
		if(pc.party[tar].hp < 1){
			spellFizzle();
		} else {
			var n = ceil(100 * mag);//floor(pc.party[tar].hpBase * 1);
			pc.party[tar].hp = clamp(pc.party[tar].hp + n, 0, pc.party[tar].hpMax);
			
			notifyMessage("CURE", casterIndex);
		}
	}
	
	if(spell.nam == "CombatCure"){
		var d = ceil(20 * mag);
		
		with(objCombatUnit){ if(aly == 1 && hp > 0){
			hp = clamp(hp + d, 0, hpMax);
		}}
		
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			pc.party[i].hp = clamp(pc.party[i].hp + d, 0, pc.party[i].hpMax);
		}}
		
		for(var ii=0; ii<200; ii++){
			var a = irandom_range(64*13+32, 64*15);
			var b = irandom_range(0, room_height);
			instance_create_depth(a, b, ww.Leff, effHeal); 
		}
		
		notifyMessage("CURE", casterIndex);
	}
	
	if(spell.nam == "Eye"){
		var n = 0;
		for(var aa=0; aa<17; aa++){ for(var bb=0; bb<13; bb++){
			if(ww.bmap[z][aa, bb] == imgBlockHiddenChest){ ww.bmap[z][aa, bb] = imgBlockChest; n ++; }
			if(ww.bmap[z][aa, bb] == imgBlockHiddenMissed){ ww.bmap[z][aa, bb] = imgBlockChest; n ++; }
			if(ww.fmap[z][aa, bb] == imgFloorSwitchTrapHiddenUp){ ww.fmap[z][aa, bb] = imgFloorSwitchTrapUp; n ++; }
		}}
		
		notifyMessage("EYEed " + string(n), casterIndex);
	}
	
	if(spell.nam == "Frost" || spell.nam == "Frost+"){
		with(objCombatUnit){ if(aly == -1){
			var d = ceil(100 * mag);
			if(spell.nam == "Frost+"){ var d = ceil(120 * mag); }
			hp -= d;
			instance_create_depth(x, y, ww.Leff, effBoomIce);
		}}
		instance_create_depth(64*10, 0, ww.Leff, effFrost);
		instance_create_depth(64*12, 0, ww.Leff, effFrost);
		instance_create_depth(64*14, 0, ww.Leff, effFrost);
		notifyMessage("FROST", casterIndex);
	}
	
	if(spell.nam == "Flame Ward"){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			if(pc.party[i].flameward < 1){ pc.party[i].flameward = 1; }
		}}
		
		notifyMessage("FLAME WARD", casterIndex);
	}
	
	
	if(spell.nam == "Gravity"){
		instance_create_depth(room_width/3, room_height/2, ww.Leff, objGravityBall);
		
		notifyMessage("GRAVITY", casterIndex);
	}
	
	
	
	
	
	if(spell.nam == "Ice Lance"){
		ww.screenCombat.pcc[casterIndex].shotCDMax = 40;
		ww.screenCombat.pcc[casterIndex].shotCD = 10;
		ww.screenCombat.pcc[casterIndex].shotType = objIceLance;
		if(ww.screenCombat.pcc[casterIndex].shotPowerMin < 30){ ww.screenCombat.pcc[casterIndex].shotPowerMin = 30; }
		if(ww.screenCombat.pcc[casterIndex].shotPowerMax < 30){ ww.screenCombat.pcc[casterIndex].shotPowerMax = 30; }
		ww.screenCombat.pcc[casterIndex].shotClusterMax = 4;
		
		
		notifyMessage("ICE LANCE", casterIndex);
	}
	
	if(spell.nam == "Leach"){
		var t = characterAimAtMostHP(1);
		if(t != noone){
			//var mult = clamp(casterLevel, 1, 10);
			//var bns = clamp(casterLevel - 10, 0, casterLevel);
			//var d = (40 * mult) + bns * 8;
			var d = ceil(250 * mag);
			t.hp -= d;
			
			pc.party[casterIndex].hp = clamp(pc.party[casterIndex].hp + ceil(d/4), 0, pc.party[casterIndex].hpMax);
			ww.screenCombat.pcc[casterIndex].hp = pc.party[casterIndex].hp;
			
			effLineOf(effLeach, 20, ww.screenCombat.pcc[casterIndex].x, ww.screenCombat.pcc[casterIndex].y, t.x+32, t.y+32);;
			
			notifyMessage("LEACH", casterIndex);
		}
	}
	
	if(spell.nam == "Light"){
		with(objGasDark){ if(object_index == objGasDark){
			instance_destroy(); 
		}}
		
		notifyMessage("LIGHT", casterIndex);
	}
	
	if(spell.nam == "Open"){
		var n = 0;
		for(var aa=0; aa<17; aa++){ for(var bb=0; bb<13; bb++){
			if(ww.bmap[z][aa, bb] == imgBlockChest){ openChest(z, aa, bb); n ++; }
			if(ww.bmap[z][aa, bb] == imgSpecChest){ openSpecChest(z, aa, bb); n ++; }
		}}
		
		
		notifyMessage("OPENed" + string(n), casterIndex);
	}
	
	if(spell.nam == "Polymorph"){
		var turned = 0; var notTurned = 0;
		with(objCombatUnit){ if(aly == -1){ if(canPoly && sprite_index != imgPolySheep){
			notTurned ++;
		}}}
		do {
			with(objCombatUnit){
				if(aly == -1){
					if(canPoly && sprite_index != imgPolySheep){
						var roll = irandom_range(1, 100) + (mag * 10);
						if(roll >= 80){
							sprite_index = imgPolySheep;
							shotType = noone;
							turned ++;
						}
					}
				}
			}
		} until (turned * 6 >= notTurned);
		
		notifyMessage("POLYMORPH", casterIndex);
	}
	
	if(spell.nam == "Phase Door"){
		if(inBounds(tx, ty) && wallBreak(tx, ty)){
			var s = instance_create_depth(tx*64, ty*64, ww.Leff, effBoom);
			
			notifyMessage("PHASE", casterIndex);
		} else {
			spellFizzle();
		}
	}
	
	if(spell.nam == "Repel"){
		for(var aa=pc.xSpot-3; aa<=pc.xSpot+3; aa++){ for(var bb=pc.ySpot-3; bb<=pc.ySpot+3; bb++){ if(inBounds(aa, bb)){
			var m = ww.mmap[pc.zSpot][aa, bb];
			if(m != noone){ if(m.object_index == objMobGoon || m.object_index == objMobGoonWater){
				ww.mmap[pc.zSpot][aa, bb] = noone;
				instance_destroy(m);
			}}
		}}}
		
		notifyMessage("REPEL", casterIndex);
	}
	
	if(spell.nam == "Shield" || spell.nam == "Wall Ring"){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			pc.party[i].shield += mag * 40;
		}}
		
		notifyMessage("SHIELD", casterIndex);
	}
	
	
	if(spell.nam == "Slab1" || spell.nam == "Slab2" || spell.nam == "Slab3"){
		var n = 1;
		if(spell.nam == "Slab1"){ n = ww.slab1Floor; }
		if(spell.nam == "Slab2"){ n = ww.slab2Floor; }
		if(spell.nam == "Slab3"){ n = ww.slab3Floor; }
		
		
		if(pc.zSpot < n){
			var dis = n - pc.zSpot;
			tx = pc.xSpot; ty = pc.ySpot;
			for(var a=0; a<17; a++){ for(var b=0; b<13; b++){
				if(ww.fmap[pc.zSpot+dis][a, b] == imgStairUp){ tx = a; ty = b; }
			}}
			pc.xSpot = tx; pc.x = tx * 64;
			pc.ySpot = ty; pc.y = ty * 64;
			playerMoveFloor(dis);
			
			notifyMessage("Used SLAB", casterIndex);
		} else {
			notifyMessage("Too deep to use SLAB", casterIndex);
		}
		
	}
	
	
	
	if(spell.nam == "Tornado"){
		if(tar == 1){ tx = pc.xSpot-1; ty = pc.ySpot -3; }
		if(tar == 2){ tx = pc.xSpot+1; ty = pc.ySpot -1; }
		if(tar == 3){ tx = pc.xSpot-1; ty = pc.ySpot +1; }
		if(tar == 4){ tx = pc.xSpot-3; ty = pc.ySpot -1; }
		
		for(var aa=tx; aa<=tx+2; aa++){ for(var bb=ty; bb<=ty+2; bb++){ if(inBounds(aa, bb)){
			var s = instance_create_depth(aa*64, bb*64, ww.Leff, effTornado);
			with(objGasDark){ if(object_index != objGasQuestion){
				if(x == aa*64 && y == bb * 64){
					instance_destroy();
				}
			}}
		}}}
		
		notifyMessage("TORNADO", casterIndex);
	}
	
	if(spell.nam == "Undertow"){
		spellCastUndertow(tar);
		notifyMessage("UNDERTOW", casterIndex);
	}
	
	if(spell.nam == "Vex"){
		with(objCombatUnit){ if(aly == -1){
			var d = ceil(10 * mag);
			vex += d;
			instance_create_depth(x, y, ww.Leff, effBoomPoison);
		}}
		notifyMessage("VEX", casterIndex);
	}
	
	if(spell.nam == "Wall of Fire" || spell.nam == "Itm Fire"){
		with(objCombatUnit){ if(aly == -1){
			var d = ceil(50 * mag);
			hp -= d;
			instance_create_depth(x, y, ww.Leff, effFire);
		}}
		instance_create_depth(64*10, 0, ww.Leff, effWallOfFire);
		instance_create_depth(64*12, 0, ww.Leff, effWallOfFire);
		instance_create_depth(64*14, 0, ww.Leff, effWallOfFire);
		
		if(spell.nam == "Itm Fire"){ notifyMessage("USE Rod of Fireballs", casterIndex); } else {
			notifyMessage("WALL OF FIRE", casterIndex);	
		}
	}
	
	
	
	if(spell.nam == "Warp"){
		
		var xa = 0; var ya = 0; var d = 6;
		if(tar == 1){ tx = pc.xSpot; ty = pc.ySpot -d; ya = 1; }
		if(tar == 2){ tx = pc.xSpot+d; ty = pc.ySpot; xa = -1; }
		if(tar == 3){ tx = pc.xSpot; ty = pc.ySpot +d; ya = -1; }
		if(tar == 4){ tx = pc.xSpot-d; ty = pc.ySpot; xa = 1; }
		
		var ok = false;
		do {
			if(inBounds(tx, ty) && ( ww.bmap[pc.zSpot][tx][ty] == noone || (pc.xSpot == tx && pc.ySpot == ty) )){
				ok = true;
			} else {
				tx += xa; ty += ya;
			}
		} until (ok);
		
		if(pc.xSpot == tx && pc.ySpot == ty){
			notifyMessage("No room to WARP", casterIndex);
		} else {
			notifyMessage("WARP", casterIndex);
			pc.xSpot = tx; pc.ySpot = ty;
			pc.x = tx * 64 + 1; pc.y = ty * 64;
			notifyMessage("WARP", casterIndex);
		}
		
		
	}
	
	
	
	
	
	if(spell.nam == "Xerox"){
		var s = instance_create_depth(64 * 13, ww.screenCombat.pcc[casterIndex].y, ww.Lcmb, objCombatClone);
		s.face = -1;
		
		notifyMessage("XEROX", casterIndex);
	}
	
	if(spell.nam == "Xenograft"){
		pc.party[tar].xenograft = 1;
		
		notifyMessage("XENOGRAFT", casterIndex);
	}
	
	if(casterIndex != -1){ pc.party[casterIndex].mp -= spell.cost; }
	pc.unitSelected = -1;
	with(objScreenSpell){ instance_destroy(); }
}