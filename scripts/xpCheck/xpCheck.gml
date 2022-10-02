function xpCheck(){
	for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
		var xpM = xpMax(pc.party[i].xpLevel[pc.party[i].class]);
		
		while(pc.party[i].xp >= xpM){
			pc.party[i].xp -= xpM;
			pc.party[i].xpLevel[pc.party[i].class] ++;
			
			if(pc.party[i].class == 0){ // rookie
				pc.party[i].hpGained += 3;
				pc.party[i].limitMax -= 10;
			} else if(pc.party[i].class == 1){ // apprentice
				pc.party[i].hpGained += 2;
				pc.party[i].mpMax += 1;
				if(pc.party[i].xpLevel[pc.party[i].class] == 3){ characterLearnSpell(i, "Wall of Fire"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 5){ characterLearnSpell(i, "Cure"); }
				
			} else if(pc.party[i].class == 2){ // mechanic
				pc.party[i].hpGained += 3;
			
			} else if(pc.party[i].class == 3){ // medic
				pc.party[i].hpGained += 3;
				
			} else if(pc.party[i].class == 4){ // heavy
				pc.party[i].hpGained += 4;
				
			} else if(pc.party[i].class == 5){ // scribe
				pc.party[i].hpGained += 2;
				pc.party[i].mpMax += 1;
				if(pc.party[i].xpLevel[pc.party[i].class] == 3){ characterLearnSpell(i, "Light"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 5){ characterLearnSpell(i, "Shield"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 10){ characterLearnSpell(i, "Polymorph"); }
				
			} else if(pc.party[i].class == 6){ // gasdoc
				pc.party[i].hpGained += 2;
				pc.party[i].mpMax += 1;
				if(pc.party[i].xpLevel[pc.party[i].class] == 3){ characterLearnSpell(i, "Leach"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 5){ characterLearnSpell(i, "Vex"); }
				
			} else if(pc.party[i].class == 7){ // knight
				pc.party[i].hpGained += 5;
			
			} else if(pc.party[i].class == 8){ // cyborg
				pc.party[i].hpGained += 5;
			
			} else if(pc.party[i].class == 9){ // LaserTech
				pc.party[i].hpGained += 3;
			
			} else if(pc.party[i].class == 10){ // MGunner
				pc.party[i].hpGained += 4;
				
			} else if(pc.party[i].class == 11){ // iceman
				pc.party[i].hpGained += 1;
				pc.party[i].mpMax += 1;
				//if(pc.party[i].xpLevel[pc.party[i].class] == 3){ characterLearnSpell(i, "Leach"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 5){ characterLearnSpell(i, "Ice Lance"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 5){ characterLearnSpell(i, "Flame Ward"); }
			
			} else if(pc.party[i].class == 12){ // bard
				pc.party[i].hpGained += 1;
				pc.party[i].mpMax += 1;
				if(pc.party[i].xpLevel[pc.party[i].class] == 3){ characterLearnSpell(i, "Repel"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 5){ characterLearnSpell(i, "Warp"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 10){ characterLearnSpell(i, "Tornado"); }
				
			} else if(pc.party[i].class == 13){ // gish
				pc.party[i].hpGained += 3;
				pc.party[i].mpMax += 1;
				if(pc.party[i].xpLevel[pc.party[i].class] == 3){ characterLearnSpell(i, "Xenograft"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 10){ characterLearnSpell(i, "Bolts"); }
				
			} else if(pc.party[i].class == 14){ // Sprayer
				pc.party[i].hpGained += 3;
				
			} else if(pc.party[i].class == 15){ // Sniper
				pc.party[i].hpGained += 3;
				
			} else if(pc.party[i].class == 16){ // Commando
				pc.party[i].hpGained += 5;
				
			} else if(pc.party[i].class == 17){ // Mage
				pc.party[i].hpGained += 1;
				pc.party[i].mpMax += 1;
				if(pc.party[i].xpLevel[pc.party[i].class] == 5){ characterLearnSpell(i, "Gravity"); }
				if(pc.party[i].xpLevel[pc.party[i].class] == 10){ characterLearnSpell(i, "Eye"); }
				
				
				
			} else if(pc.party[i].class == 18){ // Demo
				pc.party[i].hpGained += 1;
				
			} else if(pc.party[i].class == 19){ // Ascendant
				pc.party[i].hpGained += 1;
				pc.party[i].mpMax += 1;
				//if(pc.party[i].xpLevel[pc.party[i].class] == 3){ characterLearnSpell(i, "Leach"); }
			
			} else { pc.party[i].hpGained += 3; }
			
			pc.party[i].hpMax = pc.party[i].hpBase + pc.party[i].hpGained;
			
			xpM = xpMax(pc.party[i].xpLevel[pc.party[i].class]);
			

			if(instance_number(objScreenCombat) > 0){ 
				if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
					var co = ww.screenCombat.pcc[i];
					if(co != noone){
						var s = instance_create_depth(co.x + 32, co.y, -8900, objEffect); s.text = "Level Up!";
					}
				}}
			} else {
				var s = instance_create_depth(pc.x + 32, pc.y, -8900, objEffect); s.text = "Level Up!";
			}

		}
		
	}}}
}