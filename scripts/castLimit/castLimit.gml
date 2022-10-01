function castLimit(co, ind){
	
	var char = pc.party[ind];
	var c = char.class;
	var l = char.xpLevel[c];
	var mag = co.magicPower;
	
	
	if(c == 1 || c == 5 ){ //Apprentice, Scribe
		var h = 4;
		char.mp = clamp(char.mp + h, char.mp, char.mpMax);
		for(var i=0; i<20; i++){
			instance_create_depth(co.x + 32, co.y, -8900, effCharge);
		}
		var s = instance_create_depth(co.x + 32, co.y, -8900, objEffect);
		s.text = "Limit MP Charge";
	} else if (c == 2) { // Mechanic
		pc.bombs ++; pc.picks += 2;
		var s = instance_create_depth(co.x + 32, co.y, -8900, objEffect); 
		s.text = "Limit Craft Tools";
		
	
	} else if (c == 3) { //Medic
		var s = instance_create_depth(co.x + 32, co.y, -8900, objEffect);
		s.text = "Limit Heal";
		
		for(var i=0; i<5; i++){ if(pc.party[i] != noone & pc.party[i].hp > 0){
			var h = ceil(pc.party[i].hpMax * .05);
			pc.party[i].hp = clamp(pc.party[i].hp + h, pc.party[i].hp, pc.party[i].hpMax);
			if(ww.screenCombat.pcc[i] != noone){ ww.screenCombat.pcc[i].hp = clamp(ww.screenCombat.pcc[i].hp + h, ww.screenCombat.pcc[i].hp, ww.screenCombat.pcc[i].hpMax); }
			
			if(ww.screenCombat.pcc[i] != noone) { for(var ii=0; ii<20; ii++){
				instance_create_depth(ww.screenCombat.pcc[i].x + 32, ww.screenCombat.pcc[i].y, -8900, effHeal);
			}}
		}}
	
	} else if(c == 4 || c == 8){ //Heavy, Cyborg
		ww.screenCombat.pcc[ind].shotCDMax = floor(ww.screenCombat.pcc[ind].shotCDMax / 3);
		//for(var i=0; i<20; i++){ instance_create_depth(co.x + 32, co.y, -8900, effCharge); }
		var s = instance_create_depth(co.x + 32, co.y, -8900, objEffect);
		s.text = "Limit Berserk";
	
	} else if (c == 6) { // gasdoc
		var b = co.y + 32;
		for(var a=co.x; a>0; a-= 32){
			var s = instance_create_depth(a, b-32, -8999, effGas);
			b += choose(0, -16, 16);
		}
		with(objCombatUnit){ if(aly == -1){
			var d = ceil(mag * 25);
			hp -= d;
			instance_create_depth(x, y, -8999, effBoomPoison);
		}}
		var s = instance_create_depth(co.x + 32, co.y, -8900, objEffect);
		s.text = "Limit Gas";
	
	} else if(c == 7 ){ //Knight
		with(objShot){ if(aly == -1){ 
			instance_create_depth(x, y, depth, effProtect);
			instance_destroy(); 
		} }
		var s = instance_create_depth(co.x + 32, co.y, -8900, objEffect);
		s.text = "Limit Protect";
		
	} else { //Rookie, other
		var h = ceil(char.hpMax / 5);
		char.hp = clamp(char.hp + h, char.hp, char.hpMax);
		co.hp = clamp(char.hp + h, char.hp, char.hpMax);
		for(var i=0; i<20; i++){
			instance_create_depth(co.x + 32, co.y, -8900, effHeal);
		}
		var s = instance_create_depth(co.x + 32, co.y, -8900, objEffect);
		s.text = "Limit Heal";
		
		
	}
	
	
}