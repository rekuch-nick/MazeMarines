function characterHasPassive(classNum, charID){
	
	if(classNum == 4){ if( (pc.party[charID].xpLevel[classNum] >= 5 && pc.party[charID].class == classNum ) || pc.party[charID].xpLevel[classNum] >= 20){ return true; }}
	
	if(classNum == 6){ 
		if( (pc.party[charID].xpLevel[classNum] >= 15 && pc.party[charID].class == classNum ) || 
		pc.party[charID].xpLevel[classNum] >= 20){ return true; }
	}
	
	if(classNum == 7){ if( (pc.party[charID].xpLevel[classNum] >= 5 && pc.party[charID].class == classNum ) || pc.party[charID].xpLevel[classNum] >= 20){ return true; }}
	
	if(classNum == 8){ if( (pc.party[charID].xpLevel[classNum] >= 1 && pc.party[charID].class == classNum ) || pc.party[charID].xpLevel[classNum] >= 20){ return true; }}
	
	
	return false;
}