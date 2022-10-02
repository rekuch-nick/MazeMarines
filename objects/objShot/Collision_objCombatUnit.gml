if(instance_number(objMenu)){ return; }
if(other.aly != aly && (other.aly != 0 || aly == -1)){
	if(onlyFor != noone && onlyFor != other.id){ return; }
	
	if(multiTarget){
		if(ds_list_find_index(alreadyHit, id) == -1){
			ds_list_add(alreadyHit, id);
		} else {
			return;
		}
	}
	
	
	var d = shotPower;
	
	//shield
	if(other.aly == 1 && pc.party[other.playerIndex].shield > 0){
		pc.party[other.playerIndex].shield = clamp(pc.party[other.playerIndex].shield - d, 0, pc.party[other.playerIndex].shield);
		d = 0;
	}
	
	//flameward DR
	if(other.aly == 1 && pc.party[other.playerIndex].flameward > 0 && d > 0 && isFire){	
		d = ceil(d * .5);
	}
	
	//xenograft DR
	if(other.aly == 1 && pc.party[other.playerIndex].xenograft > 0 && d > 0){	
		d = ceil(d * .75);
	}
	
	
	//deflection
	if(other.aly == 1 && !multiTarget && pc.party[other.playerIndex].item != noone && pc.party[other.playerIndex].item.wearEffect == "Minor Deflection"){
		var r = irandom_range(0, 99);
		if(r < 10){
			instance_create_depth(x, y, ww.Leff, effPinkShotBlocked);
			instance_destroy();
			return;
		}
	}
	
	if(aoe > 0){
		var s = instance_create_depth(x, y, ww.Leff, effBoomCircle);
		s.image_xscale = aoe / sprite_width;
		s.image_yscale = aoe / sprite_height;
		
		
		
		with(objCombatUnit){
			var dis = point_distance(x, y, other.x, other.y);
			if(dis <= other.aoe){
				
				hp -= d;
				
			}
		}
		
	} else {
	
	
		
		other.hp -= d;
	
		if(bleedShots && d > 0){ other.bleed = 1; }
		if(poisonShots && d > 0){ other.poison = 1; }
		if(muteShots && d > 0){ other.mute ++; }
	}
	
	if(chain > 0){
		aimType = "random";
		var t = characterAim();
		if(t != noone){
			var s = instance_create_depth(x, y, ww.Leff, object_index);
			s.chain = chain - 1;
			s.onlyFor = t;
			s.aly = aly;
			s.tx = t.x+32;
			s.ty = t.y+32;
			s.shotPower = shotPower;
		}
	}
	
	
	if(!multiTarget){ instance_destroy(); }
	
	
}