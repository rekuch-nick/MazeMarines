function spellCast(spell, casterIndex, tar){
	var tx = pc.xSpot; var ty = pc.ySpot; var z = pc.zSpot;
	if(tar == 1){ ty --; } if(tar == 2){ tx ++; } if(tar == 3){ ty ++; } if(tar == 4){ tx --; }
	var casterLevel = casterIndex == -1 ? 0 : pc.party[casterIndex].xpLevel[pc.party[casterIndex].class];
	if(instance_number(objScreenCombat) > 0){ mag = ww.screenCombat.pcc[casterIndex].magicPower; }
	
	
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
		
		var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x + 32, ww.screenCombat.pcc[casterIndex].y, -8900, objEffect);
		s.text = "AIM";
	}
	
	if(spell.nam == "AntiVenom"){
		pc.party[tar].poison = 0;
		
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "ANTIVENOM";
	}
	if(spell.nam == "AntiVenom+"){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			pc.party[i].poison = 0;
		}}
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "ANTIVENOM+";
	}
	
	
	if(spell.nam == "Bolts"){
		ww.screenCombat.pcc[casterIndex].shotCDMax = 20;
		ww.screenCombat.pcc[casterIndex].shotCD = 10;
		ww.screenCombat.pcc[casterIndex].shotType = objBoltShot;
		
		var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x + 32, ww.screenCombat.pcc[casterIndex].y, -8900, objEffect);
		s.text = "BOLTS";
	}
	
	if(spell.nam == "Bind Wounds"){
		pc.party[tar].bleed = 0;
		
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "BIND";
	}
	if(spell.nam == "Bind Wounds+"){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			pc.party[i].bleed = 0;
		}}
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "BIND+";
	}
	
	if(spell.nam == "Cure"){
		var n = floor(pc.party[tar].hpBase * 1);
		pc.party[tar].hp = clamp(pc.party[tar].hp + n, 0, pc.party[tar].hpMax);
		
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "CURE";
	}
	
	if(spell.nam == "Eye"){
		var n = 0;
		for(var aa=0; aa<17; aa++){ for(var bb=0; bb<13; bb++){
			if(ww.bmap[z][aa, bb] == imgBlockHiddenChest){ ww.bmap[z][aa, bb] = imgBlockChest; n ++; }
			if(ww.bmap[z][aa, bb] == imgBlockHiddenMissed){ ww.bmap[z][aa, bb] = imgBlockChest; n ++; }
			if(ww.fmap[z][aa, bb] == imgFloorSwitchTrapHiddenUp){ ww.fmap[z][aa, bb] = imgFloorSwitchTrapUp; n ++; }
		}}
		
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "EYEed " + string(n);
	}
	
	if(spell.nam == "Frost"){
		with(objCombatUnit){ if(aly == -1){
			//var mult = clamp(casterLevel, 1, 10);
			//var bns = clamp(casterLevel - 10, 0, casterLevel);
			//var d = (20 * mult) + bns * 4;
			var d = ceil(100 * other.mag);
			hp -= d;
			instance_create_depth(x, y, -8999, effBoomIce);
		}}
		instance_create_depth(64*10, 0, -8999, effFrost);
		instance_create_depth(64*12, 0, -8999, effFrost);
		instance_create_depth(64*14, 0, -8999, effFrost);
		var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x + 32, ww.screenCombat.pcc[casterIndex].y, -8900, objEffect);
		s.text = "FROST";
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
			
			var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x + 32, ww.screenCombat.pcc[casterIndex].y, -8900, objEffect);
			s.text = "LEACH";
		}
	}
	
	if(spell.nam == "Light"){
		with(objGasDark){ instance_destroy(); }
		
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "LIGHT";
	}
	
	if(spell.nam == "Open"){
		var n = 0;
		for(var aa=0; aa<17; aa++){ for(var bb=0; bb<13; bb++){
			if(ww.bmap[z][aa, bb] == imgBlockChest){ openChest(z, aa, bb); n ++; }
			if(ww.bmap[z][aa, bb] == imgSpecChest){ openSpecChest(z, aa, bb); n ++; }
		}}
		
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "OPENed " + string(n);
	}
	
	if(spell.nam == "Phase Door"){
		if(inBounds(tx, ty) && wallBreak(tx, ty)){
			var s = instance_create_depth(tx*64, ty*64, -8900, effBoom);
			
			var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
			s.text = "PHASE";
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
		
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "REPEL";
	}
	
	if(spell.nam == "Shield"){
		for(var i=0; i<5; i++){ if(pc.party[i] != noone && pc.party[i].hp > 0){
			pc.party[i].shield += mag * 40;
		}}
		
		var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x + 32, ww.screenCombat.pcc[casterIndex].y, -8900, objEffect);
		s.text = "SHIELD";
	}
	
	if(spell.nam == "Vex"){
		with(objCombatUnit){ if(aly == -1){
			var d = ceil(10 * other.mag);
			vex += d;
			instance_create_depth(x, y, -8999, effBoomPoison);
		}}
		var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x + 32, ww.screenCombat.pcc[casterIndex].y, -8900, objEffect);
		s.text = "VEX";
	}
	
	if(spell.nam == "Wall of Fire"){
		with(objCombatUnit){ if(aly == -1){
			//var mult = clamp(casterLevel, 1, 10);
			//var bns = clamp(casterLevel - 10, 0, casterLevel);
			//var d = (20 * mult) + bns * 4;
			var d = ceil(50 * other.mag);
			hp -= d;
			instance_create_depth(x, y, -8999, effBoom);
		}}
		instance_create_depth(64*10, 0, -8999, effWallOfFire);
		instance_create_depth(64*12, 0, -8999, effWallOfFire);
		instance_create_depth(64*14, 0, -8999, effWallOfFire);
		var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x + 32, ww.screenCombat.pcc[casterIndex].y, -8900, objEffect);
		s.text = "WALL OF FIRE";
	}
	
	if(spell.nam == "Xerox"){
		var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x - 70, ww.screenCombat.pcc[casterIndex].y, ww.screenCombat.pcc[casterIndex].depth, objCombatClone);
		s.face = -1;;
		
		var s = instance_create_depth(ww.screenCombat.pcc[casterIndex].x + 32, ww.screenCombat.pcc[casterIndex].y, -8900, objEffect);
		s.text = "XEROX";
	}
	
	if(spell.nam == "Xenograft"){
		pc.party[tar].xenograft = 1;
		
		var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect);
		s.text = "XENOGRAFT";
	}
	
	if(casterIndex != -1){ pc.party[casterIndex].mp -= spell.cost; }
	pc.unitSelected = -1;
	with(objScreenSpell){ instance_destroy(); }
}