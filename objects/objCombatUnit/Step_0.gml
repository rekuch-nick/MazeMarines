if(instance_number(objMenu) > 0){ return; }

if(firstFrame || moved){
	var shiftAway = true;
	if(object_index == objCombatClone){ shiftAway = false; }
	
	if(shiftAway){
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
	}
	
	moved = false;
	firstFrame = false;
} /// end of firstframe

depth = ww.Lcmb - y;



if(regen > 0 && hp < hpMax){
	var hMod = 300; // 30 - 120
	if(regen > 100){ hMod = 250; }
	if(regen > 200){ hMod = 200; }
	if(regen > 300){ hMod = 150; }
	var n = (hpMax / hMod)
	hp += n; 
	regen -= n; 
}
	

if(aly == 1){
	pc.party[playerIndex].hp = hp;
	if(bleed > 0){ pc.party[playerIndex].bleed += bleed; bleed = 0; }
	if(stun > 0){ pc.party[playerIndex].stun += stun; stun = 0; }
	if(poison > 0){ pc.party[playerIndex].poison += poison; poison = 0; }
	if(mute > 0){ pc.party[playerIndex].mute += mute; mute = 0; }
	
	if(hp < 1){
		with(objScreenSpell){
			if(index == other.playerIndex){
				instance_destroy();	
			}
		}
	}
}


if(sprite_index == imgPolySheep){
	x = clamp(x + irandom_range(-1, 1), 32, 64*10);
	y = clamp(y + irandom_range(-1, 1), 32, 64*11);
}



if(hp < 1){
	hp = 0;
	
	
	if(aly == -1){ 
		ww.screenCombat.xp += xp; ww.screenCombat.gp += gold; 
		
		for(var i=0; i<5; i++){
			if(characterHasPassive(4, i)){
			//if(pc.party[i].hp > 0){ if(pc.party[i].xpLevel[4] >= 20 || (pc.party[i].class == 4 &&  pc.party[i].xpLevel[4] >= 5) ){
				with(objCombatUnit){ if(aly == 1 && playerIndex == i){
					hp = clamp(hp + 1, 0, hpMax);
				}}
			}//}
		}
		
	}
	if(aly == 1){ pc.party[playerIndex].hp = 0; }
	
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

if(aly == 1){
	if(procCD > 0){
		procCD --;
	} else {
		var mobsLeft = false; with(objCombatUnit){ if(aly == -1){ mobsLeft = true; } }
		var itm = pc.party[playerIndex].item;
		if(itm != noone && mobsLeft){
			if(itm.wearEffect == "Wall of Fire" && irandom_range(1, 30 * 10) == 1){ 
				spellCast(getSpell("Itm Fire"), playerIndex, ""); 
				procCD = 300;
			}
			
			if(itm.wearEffect == "Wall Ring" && irandom_range(1, 30 * 15) == 1){ 
				spellCast(getSpell("Wall Ring"), playerIndex, ""); 
				procCD = 300;
			}
		
		}
	}
}

shotCD --;
if(shotCD < 1){
	
	if(aly == 1 && pc.party[playerIndex].limit >= pc.party[playerIndex].limitMax){
		castLimit(id, playerIndex);
		shotCD = shotCDMax;
		pc.party[playerIndex].limit = 0;
	} else {
		var st = shotType;
		
		if(vex > 0 && irandom_range(0, 1) == 1){ 
			var s = instance_create_depth(x+32, y+32, ww.Leff, objEffect);
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
			
				var s = instance_create_depth(x+32, y+32, ww.Leff, st);
				s.aly = aly;
				s.tx = aa;
				s.ty = bb;
				s.shotPower = irandom_range(shotPowerMin, shotPowerMax);
				if(aly == 1 && pc.party[playerIndex].item != noone && pc.party[playerIndex].item.wearEffect == "+1"){ s.shotPower +=1; }
				if(aly == 1 && pc.party[playerIndex].item != noone && pc.party[playerIndex].item.wearEffect == "+2"){ s.shotPower +=2; }
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