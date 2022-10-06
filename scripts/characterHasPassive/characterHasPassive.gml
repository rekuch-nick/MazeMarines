function characterHasPassive(classNum, charID){
	
	if(classNum == 5){ if( (pc.party[charID].xpLevel[classNum] >= 5 && pc.party[charID].class == classNum ) || pc.party[charID].xpLevel[classNum] >= 20){
		return true;
	}}
	
	
	return false;
}