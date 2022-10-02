function characterLearnSpell(charIndex, s){
	if(pc.party[charIndex].mpMax < 4){ pc.party[charIndex].mpMax = 4; }
	
	arr = []; var ind = 0;
	
	for(var a=0; a<=22; a++){
		var sp = "";
		if(a == 0){ sp = "Aim"; }
		if(a == 1){ sp = "AntiVenom"; }
		if(a == 2){ sp = "Bolts"; }
		if(a == 3){ sp = "Bind Wounds"; }
		if(a == 4){ sp = "Cure"; }
		if(a == 5){ sp = "Eye"; }
		if(a == 6){ sp = "Frost"; }
		if(a == 7){ sp = "Flame Ward"; }
		if(a == 8){ sp = "Gravity"; }
		if(a == 9){ sp = "Ice Lance"; }
		if(a == 10){ sp = "Leach"; }
		if(a == 11){ sp = "Light"; }
		if(a == 12){ sp = "Open"; }
		if(a == 13){ sp = "Phase Door"; }
		if(a == 14){ sp = "Polymorph"; }
		if(a == 15){ sp = "Repel"; }
		if(a == 16){ sp = "Shield"; }
		if(a == 17){ sp = "Tornado"; }
		if(a == 18){ sp = "Vex"; }
		if(a == 19){ sp = "Wall of Fire"; }
		if(a == 20){ sp = "Warp"; }
		if(a == 21){ sp = "Xerox"; }
		if(a == 22){ sp = "Xenograft"; }
		
		
		if(s == sp || characterKnowsSpell(pc.party[charIndex], sp)){ 
			arr[ind] = sp;
			ind++; 
		}
	}
	
	
	
	
	for(var i=0; i<array_length(arr); i++){
		pc.party[charIndex].spells[i] = arr[i];
	}
	
}