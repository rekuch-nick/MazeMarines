//if(instance_number(objScreen) != 1){ return; }
if(firstFrame){
	var tries = 0;
	while(tries < 10000 && collision_circle(x + 32, y + 32, 16, objCombatUnit, false, true)){
		if(x < 16){ x = 15; }
		if(y < 16){ y = 15; }
		if(x > room_width / 3){ x = room_width / 3; }
		if(y > room_height - 76){ y = room_height - 76; }
		tries ++;
		x += choose(-5, 5);
		y += choose(-5, 5);
	}
	
	
	firstFrame = false;
}

depth = -8000 - y;


if(playerIndex != -1){
	pc.party[playerIndex].hp = hp;
	if(bleed > 0){ pc.party[playerIndex].bleed += bleed; bleed = 0; }
	if(stun > 0){ pc.party[playerIndex].stun += stun; stun = 0; }
	if(poison > 0){ pc.party[playerIndex].poison += poison; poison = 0; }
	if(mute > 0){ pc.party[playerIndex].mute += mute; mute = 0; }
	
	
	
}


if(regen > 1200 && hp < hpMax){ hp +=.5; regen --; }
if(regen > 600 && hp < hpMax){ hp +=.5; regen --; }
if(regen > 300 && hp < hpMax){ hp +=.5; regen --; }
if(regen > 150 && hp < hpMax){ hp +=.5; regen --; }
if(regen > 0 && hp < hpMax){ hp +=.5; regen --; }




if(hp < 1){
	if(aly == -1){ ww.screenCombat.xp += xp; ww.screenCombat.gp += gold; }
	
	var iid = id;
	with(objCombatUnit){
		if(target == iid){ target = noone; }
	}
	if(aly == 1){
		ww.screenCombat.pcc[playerIndex] = noone;
	}
	instance_destroy();
}


if(stunTime > 0){ stunTime --; return; }


shotCD --;
if(shotCD < 1){
	
	if(aly == 1 && pc.party[playerIndex].limit >= pc.party[playerIndex].limitMax){
		castLimit(id, playerIndex);
		shotCD = shotCDMax;
		pc.party[playerIndex].limit = 0;
	} else {
		var st = shotType;
		
		if(vex > 0 && irandom_range(0, 1) == 1){ 
			var s = instance_create_depth(x+32, y+32, -8990, objEffect);
			s.text = "?";
			vex --; st = noone; 
		}
		if(stun > 0){ st = noone; }
		
		if(st != noone){
			if(target == noone){
				target = characterAim();
				if(st == objLazShot){
					//target = characterAimAtMostHP(aly);
					target = characterAimAtLeastHP(aly);
				}
			}
			
			
			if(target != noone){
				var aa = target.x + 32;
				var bb = target.y + 32;
				
				if(ySpread != 0){ bb += irandom_range(-ySpread, ySpread); }
				
				if(st == objLazShot){ 
					effLineOf(effLaz, 20, x, y+32, target.x+32, target.y+32); 
				}
			
				var s = instance_create_depth(x+32, y+32, -8990, st);
				s.aly = aly;
				s.tx = aa;
				s.ty = bb;
				s.shotPower = irandom_range(shotPowerMin, shotPowerMax);
				if(aly == 1 && pc.party[playerIndex].aim > 0){ s.shotPower = floor(s.shotPower * 1.2); }
				if(aly == 1 && pc.party[playerIndex].xenograft > 0){ s.shotPower = floor(s.shotPower * 1.1); }
				s.bleedShots = bleedShots;
				s.poisonShots = poisonShots;
				if(irandom_range(0, 99) < poisonChance){
					s.poisonShots = true;
					s.sprite_index = imgGreenShot;
				}
				if(irandom_range(0, 99) < bleedChance){
					s.bleedShots = true;
				}
				if(irandom_range(0, 99) < muteChance){
					s.muteShots = true;
				}
				
				if(s.aoe > 0){ s.aoe += aoePlus; }
				if(st == objLazShot){ s.onlyFor = target; }
			}
		}
	
	
		shotCD = shotCDMax;
		if(shotCluster > 0){
			shotCD = shotClusterCD;
			shotCluster --;
		} else { 
			target = noone;
			shotCluster = shotClusterMax; 
		}
	}
	
	
	
}