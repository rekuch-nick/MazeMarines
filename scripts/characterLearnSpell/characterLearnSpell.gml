function characterLearnSpell(charIndex, s){
	if(pc.party[charIndex].mpMax < 4){ pc.party[charIndex].mpMax = 4; }
	
	arr = []; var ind = 0;
	
	for(var a=0; a<=17; a++){
		var sp = "";
		if(a == 0){ sp = "Aim"; }
		if(a == 1){ sp = "AntiVenom"; }
		if(a == 2){ sp = "Bolts"; }
		if(a == 3){ sp = "Bind Wounds"; }
		if(a == 4){ sp = "Cure"; }
		if(a == 5){ sp = "Eye"; }
		if(a == 6){ sp = "Frost"; }
		if(a == 7){ sp = "Ice Lance"; }
		if(a == 8){ sp = "Leach"; }
		if(a == 9){ sp = "Light"; }
		if(a == 10){ sp = "Open"; }
		if(a == 11){ sp = "Phase Door"; }
		if(a == 12){ sp = "Repel"; }
		if(a == 13){ sp = "Shield"; }
		if(a == 14){ sp = "Vex"; }
		if(a == 15){ sp = "Wall of Fire"; }
		if(a == 16){ sp = "Xerox"; }
		if(a == 17){ sp = "Xenograft"; }
		
		
		if(s == sp || characterKnowsSpell(pc.party[charIndex], sp)){ 
			arr[ind] = sp;
			ind++; 
		}
	}
	
	
	
	
	for(var i=0; i<array_length(arr); i++){
		pc.party[charIndex].spells[i] = arr[i];
	}
	
}