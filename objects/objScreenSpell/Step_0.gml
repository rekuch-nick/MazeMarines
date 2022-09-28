if(firstFrame){
	firstFrame = false;
	
	var len = array_length(pc.party[index].spells);
	for(var i=0; i<len; i++){
		var s = getSpell(pc.party[index].spells[i]);
		s = upgradeSpell(s, pc.party[index]);
		
		if(s.explore == explore){
			spells[spellI] = s;
			spellI ++;
			if(pc.party[index].mp < s.cost){ s.canCast = false; }
			if(pc.party[index].mute > 0){ s.canCast = false; }
		}
	}
	
	template = characterBaseCombatStats(pc.party[index].class, pc.party[index].xpLevel[pc.party[index].class]);
	
	
	return;
}

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