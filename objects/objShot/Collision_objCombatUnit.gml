if(other.aly != aly && (other.aly != 0 || aly == -1)){
	
	var d = shotPower;
	
	if(other.aly == 1 && pc.party[other.playerIndex].shield > 0){
		pc.party[other.playerIndex].shield = clamp(pc.party[other.playerIndex].shield - d, 0, pc.party[other.playerIndex].shield);
		d = 0;
	}
	
	if(other.aly == 1 && pc.party[other.playerIndex].xenograft > 0 && d > 0){	
		d = ceil(d * .75);
	}
	
	if(other.aly == 1 && pc.party[other.playerIndex].item != noone && pc.party[other.playerIndex].item.wearEffect == "Minor Deflection"){
		var r = irandom_range(0, 99);
		if(r < 10){
			instance_create_depth(x, y, depth, effPinkShotBlocked);
			instance_destroy();
			return;
		}
	}
	
	if(aoe > 0){
		var s = instance_create_depth(x, y, depth, effBoomCircle);
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
	
	instance_destroy();
	
	
}