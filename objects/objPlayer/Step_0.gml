if(instance_number(objMenu)){ return; }
if(!instance_number(objScreen) == 0 && !instance_number(objScreenCombat) == 1 && !instance_number(objScreenSpell)){ return; }
if(spellInputCD > 0){ spellInputCD --; } else if(numberPressed() != noone){
	var i = numberPressed() - 1;
	
	//if(unitSelected == -1 || unitSelected != i){
		if(pc.party[i] != noone){ //if(pc.party[i].hp > 0){
			unitSelected = i;
			with(objScreenSpell){ instance_destroy(); }
			var s = instance_create_depth(0, 0, ww.Lscn, objScreenSpell);
			s.index = i; 
			s.explore = instance_number(objScreenCombat) == 0;
		}//}
	//} else if(unitSelected == i){
		//unitSelected = -1;
		//with(objScreenSpell){ instance_destroy(); }
	//}
}



if(xpToGain > 0 && instance_number(objScreenCombat) <= 1 ){
	var n = 10;
	if(xpToGain > 100){ n = 100; }
	if(xpToGain > 500){ n = 500; }
	if(xpToGain > 2000){ n = 2000; }
	if(xpToGain > 4000){ n = 4000; }
	if(xpToGain > 16000){ n = 16000; }
	if(xpToGain > 32000){ n = 32000; }
	if(xpToGain > 64000){ n = 64000; }
	if(xpToGain > 128000){ n = 128000; }
	xpToGain = clamp(xpToGain - n, 0, xpToGain);
	xpGain(n);
}
if(instance_number(objScreen) > 0){ return; }





if(waitCD > 0){ waitCD --; }
if(combatCD > 0){ combatCD --; }


if(usingItem != "" && answer != ""){
	if(answer == 1 || answer == 2 || answer == 3 || answer == 4){
	
		var tx = xSpot; var ty = ySpot;
		if(answer == 1){ ty --; } if(answer == 2){ tx ++; } if(answer == 3){ ty ++; } if(answer == 4){ tx --; }
		if(usingItem == "bomb"){
			pc.bombs --; wallBreak(tx, ty);
			instance_create_depth(tx*64, ty*64, ww.Leff, effBoom);
			spellInputCD = 5;
		}
		if(usingItem == "dig"){
			if(!pc.pickType = imgPick2 || irandom_range(0, 1) == 1){ pc.picks --; }
			floorBreak(tx, ty);
			instance_create_depth(tx*64, ty*64, ww.Leff, effDig);
			spellInputCD = 5;
		}
		if(usingItem == "boat"){
			if(inBounds(tx, ty) && ww.fmap[zSpot][tx, ty] == imgFloorWater){
				pc.boats --;
				var t = pc.boatType == imgBoat2 ? imgFloorWaterBoat2 : imgFloorWaterBoat;
				ww.fmap[zSpot][tx, ty] = t;
			}
			spellInputCD = 5;
		}
		if(usingItem == "medkit"){
			var i = answer;
			if(party[i] != noone){ if(party[i].hp < party[i].hpMax){
				if(party[i].hp > 0 || pc.medkitType == imgMedkit2){
					party[i].hp = party[i].hpMax;
					pc.medkits --;
					for(var ii=0; ii<20; ii++){ instance_create_depth(xSpot*64+32, ySpot*64, ww.Leff, effHeal); }
				}
			}}
			spellInputCD = 5;
		}
	}
	answer = "";
	usingItem = "";
}




justMoved = false;
callEnterTile = false;
if(x != xSpot * 64 || y != ySpot * 64){
	justMoved = true;
	var slide = 8;
	while(x < xSpot * 64 && slide > 0){ slide --; x ++; }
	while(x > xSpot * 64 && slide > 0){ slide --; x --; }
	while(y > ySpot * 64 && slide > 0){ slide --; y --; }
	while(y < ySpot * 64 && slide > 0){ slide --; y ++; }
	
	if(x == xSpot * 64 && y == ySpot * 64){ callEnterTile = true; }
}




if(!justMoved && spellInputCD < 1){
	
	if(keyboard_check(vk_up) || keyboard_check(ord("W"))){ playerStep(0, -1); }
	else if(keyboard_check(vk_down) || keyboard_check(ord("S"))){ playerStep(0, 1); }
	else if(keyboard_check(vk_left) || keyboard_check(ord("A"))){ playerStep(-1, 0); }
	else if(keyboard_check(vk_right) || keyboard_check(ord("D"))){ playerStep(1, 0); }
	else if(keyboard_check(vk_space) && waitCD < 1){ timePasses(-1); waitCD = 10; }
	else if(keyboard_check_pressed(vk_enter)){
		if(ww.fmap[zSpot][xSpot, ySpot] == imgStairDown){ 
			playerMoveFloor(1); 
			with(effStairIndicator){ instance_destroy(); }
			return; 
		}
		if(ww.fmap[zSpot][xSpot, ySpot] == imgStairUp){ playerMoveFloor(-1); return; }
	}
	else if(bombs > 0 && letterPressed() == "B"){
		if(pc.bombType == imgBomb2){
			pc.bombs --;
			for(var aa=pc.xSpot-1; aa<=pc.xSpot+1; aa++){ for(var bb=pc.ySpot-1; bb<=pc.ySpot+1; bb++){ 
				if(!inBounds(aa, bb)){ continue; }
				wallBreak(aa, bb);
				instance_create_depth(aa*64, bb*64, ww.Leff, effBoom);
				if(ww.mmap[pc.zSpot][aa, bb] != noone && ww.mmap[pc.zSpot][aa, bb].object_index == objMobGoon){
					instance_destroy(ww.mmap[pc.zSpot][aa, bb]);
					ww.mmap[pc.zSpot][aa, bb] = noone;
				}
			}}
		} else {
			usingItem = "bomb"; createMenu("Toss BOMB in which direction?", "dir", "wide", "dir", [""], [""], [""]);
		}
	}
	else if(picks > 0 && letterPressed() == "H"){
		usingItem = "dig";
		createMenu("Dig with HARROW in which direction?", "dir", "wide", "dir", [""], [""], [""]);
	}
	else if(medkits > 0 && letterPressed() == "M"){
		usingItem = "medkit";
		createMenu("Use Medkit on whom?", "num", "wide+", "num", ["1] "+pc.party[0].nickname,"2] "+pc.party[1].nickname,"3] "+pc.party[2].nickname,"4] "+pc.party[3].nickname,"5] "+pc.party[4].nickname], [0,1,2,3,4], [0,0,0,0,0]);
	}
	else if(boats > 0 && letterPressed() == "R"){
		usingItem = "boat";
		createMenu("Inflate RAFT in which direction?", "dir", "wide", "dir", [""], [""], [""]);
	}
	else if(letterPressed() == "I"){
		instance_create_depth(0, 0, ww.Lscn, objScreenInventory);
	}
}

if(callEnterTile){
	callEnterTile = false;
	playerEnterTileImpl(zSpot, xSpot, ySpot);
	
	
	
	
}



if(answer != ""){
	answer = "";
}





if(keyboard_check_pressed(vk_backspace)){
	debug = !debug;
}


if(debug){
	if(keyboard_check_pressed(vk_pagedown)){ 
		with(effStairIndicator){ instance_destroy(); }
		playerMoveFloor(1); 
	}
	if(keyboard_check_pressed(vk_pageup)){ playerMoveFloor(-1); }
	
	if(keyboard_check_pressed(vk_home)){ 
		if(keyboard_check(vk_shift)){
			party[0].xp = xpMax(pc.party[0].xpLevel[pc.party[0].class]);
			xpCheck();
		} else {
			var n = xpMax(pc.party[0].xpLevel[pc.party[0].class]);
			xpToGain += n*5; 
		}
	}
	
	if(keyboard_check_pressed(vk_insert)){ 
		if(pc.coins >= 10000){ pc.coins = 0; } else { pc.coins = 10000; }
		picks = 10; bombs = 10; medkits = 10; boats = 10;
	}
}