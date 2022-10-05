function characterLearnSpell(charIndex, s){
	if(pc.party[charIndex].mpMax < 4){ pc.party[charIndex].mpMax = 4; }
	
	arr = []; var ind = 0;
	
	for(var a=0; a<=24; a++){
		var sp = "";
		if(a == 0){ sp = "Aim"; }
		if(a == 1){ sp = "AntiVenom"; }
		if(a == 2){ sp = "Bolts"; }
		if(a == 3){ sp = "Bind Wounds"; }
		if(a == 4){ sp = "Cure"; }
		if(a == 5){ sp = "CombatCure"; }
		if(a == 6){ sp = "Eye"; }
		if(a == 7){ sp = "Frost"; }
		if(a == 8){ sp = "Flame Ward"; }
		if(a == 9){ sp = "Gravity"; }
		if(a == 10){ sp = "Ice Lance"; }
		if(a == 11){ sp = "Leach"; }
		if(a == 12){ sp = "Light"; }
		if(a == 13){ sp = "Open"; }
		if(a == 14){ sp = "Phase Door"; }
		if(a == 15){ sp = "Polymorph"; }
		if(a == 16){ sp = "Repel"; }
		if(a == 17){ sp = "Shield"; }
		if(a == 18){ sp = "Tornado"; }
		if(a == 19){ sp = "Undertow"; }
		if(a == 20){ sp = "Vex"; }
		if(a == 21){ sp = "Wall of Fire"; }
		if(a == 22){ sp = "Warp"; }
		if(a == 23){ sp = "Xerox"; }
		if(a == 24){ sp = "Xenograft"; }
		
		
		if(s == sp || characterKnowsSpell(pc.party[charIndex], sp)){ 
			arr[ind] = sp;
			ind++; 
		}
	}
	
	
	
	
	for(var i=0; i<array_length(arr); i++){
		pc.party[charIndex].spells[i] = arr[i];
	}
	
	
	for(var i=0; i<5; i++){ if(pc.party[i] != noone){ pc.party[i].readyToLearn = characterReadyToLearnSpells(i); }}
}