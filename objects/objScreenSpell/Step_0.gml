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
			
			pc.menuNote = "";
			if(s.nam == "Bind Wounds"){ pc.menuNote = "Bind Wounds"; }
			if(s.nam == "AntiVenom"){ pc.menuNote = "AntiVenom"; }
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
		if(instance_number(objScreenCombat) < 1 && template != noone){
			pc.unitSelected = -1;
			createMenu("Checking Status", "stat", "small", "", ["Okay"], ["no"], [0]);
		} else {
			instance_destroy(); return;
		}
	}
	
	
	
	return;
} /// end of firstframe ///



if(castX != ""){
	if(castCD > 1){ 
		castCD --; pc.spellInputCD = 5; 
	} else {
		spellCast(castX, index, noone);
		pc.spellInputCD = 6;
		instance_destroy(); return;
	}
}

if(answer != ""){
	if(answer == "no"){ instance_destroy(); return; }
	
	
	
	if(waitingForNumber){
		spellCast(spl, index, answer);
		pc.spellInputCD = 6;
		instance_destroy(); return;
	}
	
	if(waitingForDirection){
		spellCast(spl, index, answer);
		pc.spellInputCD = 6;
		instance_destroy(); return;
	}
	
	
	var s = getSpellStructByLetter(string_char_at(answer, 0), spells);
	if(s != noone){
		if(s.canCast){
			if(s.target == ""){
				castX = s; castCD = s.wait;
				castX = s;
				answer = "";
				//spellCast(s, index, noone);
				return;
				
			} else if(s.target == "number"){
				createMenu("Cast " + s.nam + " on whom?", "num", "wide+", "num", ["1] "+pc.party[0].nickname,"2] "+pc.party[1].nickname,"3] "+pc.party[2].nickname,"4] "+pc.party[3].nickname,"5] "+pc.party[4].nickname], [0,1,2,3,4], [0,0,0,0,0]);
				
				
				spl = s;
				waitingForNumber = true;
				return;
				
			} else if(s.target == "direction"){
				createMenu("Cast " + s.nam + " in which direction?", "dir", "wide", "dir", [""], [""], [""]);
				spl = s;
				waitingForDirection = true;
				return;
			}
		}
	}
	
	
}




