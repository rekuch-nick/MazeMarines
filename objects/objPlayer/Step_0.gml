if(instance_number(objMenu)){ return; }
if(!instance_number(objScreen) == 0 && !instance_number(objScreenCombat) == 1 && !instance_number(objScreenSpell)){ return; }
if(spellInputCD > 0){ spellInputCD --; } else if(numberPressed() != noone){
	var i = numberPressed() - 1;
	
	//if(unitSelected == -1 || unitSelected != i){
		if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
			unitSelected = i;
			with(objScreenSpell){ instance_destroy(); }
			var s = instance_create_depth(0, 0, -8999, objScreenSpell);
			s.index = i; 
			s.explore = instance_number(objScreenCombat) == 0;
		}}
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


if(directionAction != ""){
	var tx = xSpot; var ty = ySpot;
	if(pressed == 1){ ty --; } if(pressed == 2){ tx ++; } if(pressed == 3){ ty ++; } if(pressed == 4){ tx --; }
	if(directionAction == "bomb"){
		pc.bombs --;
		instance_create_depth(tx*64, ty*64, -8999, effBoom);
		wallBreak(tx, ty);
	}
	if(directionAction == "dig"){
		pc.picks --;
		instance_create_depth(tx*64, ty*64, -8999, effDig);
		floorBreak(tx, ty);
	}
	if(directionAction == "medkit"){
		var i = pressed;
		if(party[i] != noone){ if(party[i].hp > 0 && party[i].hp < party[i].hpMax){
			party[i].hp = party[i].hpMax;
			pc.medkits --;
			for(var ii=0; ii<20; ii++){ instance_create_depth(xSpot*64+32, ySpot*64, -8999, effHeal); }
		}}
	}
	if(directionAction == "boat"){
		if(inBounds(tx, ty) && ww.fmap[zSpot][tx, ty] == imgFloorWater){
			pc.boats --;
			ww.fmap[zSpot][tx, ty] = imgFloorWaterBoat;
		}
		
		
		
	}
	
	directionAction = "";
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
		if(ww.fmap[zSpot][xSpot, ySpot] == imgStairDown){ playerMoveFloor(1); return; }
		if(ww.fmap[zSpot][xSpot, ySpot] == imgStairUp){ playerMoveFloor(-1); return; }
	}
	else if(bombs > 0 && letterPressed() == "B"){
		var s = instance_create_depth(0, 0, -8999, objScreenGetDirection);
		s.txt = "Toss BOMB";
		s.action = "bomb";
	}
	else if(picks > 0 && letterPressed() == "H"){
		var s = instance_create_depth(0, 0, -8999, objScreenGetDirection);
		s.txt = "Use HARROW";
		s.action = "dig";
	}
	else if(medkits > 0 && letterPressed() == "M"){
		var s = instance_create_depth(0, 0, -8999, objScreenGetNumber);
		s.txt = "Use MEDKIT";
		s.action = "medkit";
	}
	else if(boats > 0 && letterPressed() == "R"){
		var s = instance_create_depth(0, 0, -8999, objScreenGetDirection);
		s.txt = "Deploy RAFT";
		s.action = "boat";
	}
	else if(letterPressed() == "I"){
		instance_create_depth(0, 0, -8998, objScreenInventory);
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
	if(keyboard_check_pressed(vk_pagedown)){ playerMoveFloor(1); }
	if(keyboard_check_pressed(vk_pageup)){ playerMoveFloor(-1); }
	
	if(keyboard_check_pressed(vk_home)){ 
		//pc.party[0].xp += xpMax(pc.party[0].xpLevel[pc.party[0].class]);
		var n = xpMax(pc.party[0].xpLevel[pc.party[0].class]);
		xpToGain += n*5; 
	}
	
	if(keyboard_check_pressed(vk_insert)){ 
		//createMenu("This is an example menu", "", "", "", ["1", "2", "3", "4", "5"], ["1", "2", "3", "4", "5"] );
		if(pc.coins >= 10000){ pc.coins = 0; } else { pc.coins = 10000; }
	}
}