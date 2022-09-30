if(instance_number(objMenu)){ return; }
if(firstFrame){
	firstFrame = false;
	
	var len = array_length(pc.party[index].spells);
	for(var i=0; i<len; i++){
		var s = getSpell(pc.party[index].spells[i]);
		s = upgradeSpell(s, pc.party[index]);
		
		if(s.explore == explore){
			spells[spellI] = s;
			spellI ++;
			//if(pc.party[index].mp < s.cost){ s.canCast = false; }
			//if(pc.party[index].mute > 0){ s.canCast = false; }
		}
	}
	
	template = characterBaseCombatStats(pc.party[index].class, pc.party[index].xpLevel[pc.party[index].class]);
	
	if(spells[0] != noone){
		for(var i=0; i<array_length(spells); i++){
			sName[i] = spells[i].nam;
			for(j=0; j<(19 - string_length(spells[i].nam)); j++){ sName[i] += " "; }
			sName[i] += "-" + string(spells[i].cost);
			
			sA[i] = spells[i].nam;
			sC[i] = spells[i].cost;
		}
		//(promptText, oType, positionNote, oHotkey, oText, oAction, oPrice){
		createMenu("Cast what?", "spell", "left", "spell", sName, sA, sC);
	} else {
		pc.unitSelected = -1;
		createMenu("Checking Status", "", "small", "", ["Okay"], ["ok"], [0]);
	}
	
	return;
} /// end of firstframe ///


if(answer != ""){
	
	var s = getSpellStructByLetter(string_char_at(answer, 0), spells);
	if(s != noone){
		if(s.canCast){
			if(s.target == ""){
				//castX = s; castCD = s.wait;
				spellCast(s, index, noone);
			} else if(s.target == "number"){
				//spl = s;
				//waitingForNumber = true;
				
			} else if(s.target == "direction"){
				//spl = s;
				//waitingForDirection = true;
			}
		}
	}
	
	
}
instance_destroy();




/*
if(escapePressed() && castCD == 0){
	pc.unitSelected = -1;
	with(objScreenSpell){ instance_destroy(); }
	return;
}

if(waitingForNumber){
	if(numberPressed() != noone){
		spellCast(spl, index, numberPressed() - 1);
		pc.spellInputCD = 6;
	}
	
	return;
} else if (waitingForDirection) {
	if(arrowPressed() != noone){
		spellCast(spl, index, arrowPressed());
		pc.spellInputCD = 6;
	}
	
	return;
}




if(letterPressed() != noone){
	var s = getSpellStructByLetter(letterPressed(), spells);
	if(s != noone){
		if(s.canCast){
			if(s.target == ""){
				castX = s; castCD = s.wait;
				//spellCast(s, index, noone);
			} else if(s.target == "number"){
				spl = s;
				waitingForNumber = true;
				
			} else if(s.target == "direction"){
				spl = s;
				waitingForDirection = true;
			}
		}
	}
}


if(castX != ""){
	if(castCD > 1){ castCD --; pc.spellInputCD = 5; } else {
		spellCast(castX, index, noone);
	}
}
*/