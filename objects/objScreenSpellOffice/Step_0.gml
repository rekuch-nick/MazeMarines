if(instance_number(objMenu) > 0){ return; }





if(answer != "" && answer != "no"){
	
	if(who != noone){
		
		pc.coins -= getSpell(answer).learnCost;
		characterLearnSpell(who, answer);
		
		
		
	} else {
		
		if(answer == "0"){ answer = 0; }
		if(answer == "1"){ answer = 1; }
		if(answer == "2"){ answer = 2; }
		if(answer == "3"){ answer = 3; }
		if(answer == "4"){ answer = 4; }
		who = answer;
	
		nams = [];
		ids = [];
		cost = [];
	
		sA = characterGetLearnableSpells(answer);
		for(var i=0; i<array_length(sA); i++){
			var o = getSpell(sA[i]);
			nams[i] = o.nam;
			for(j=0; j<(19 - string_length(o.nam)); j++){ nams[i] += "."; }
			nams[i] += string(o.cost * pc.spellLearnPriceMod) + "g";
		
		
			ids[i] = o.nam;
			cost[i] = o.learnCost * pc.spellLearnPriceMod;
		}
	
	
		createMenu("Which spell to learn?", "learnSpell", "big", "",nams, ids, cost);
	}
	
	
}






if(anyPressed()){
	instance_destroy();
}