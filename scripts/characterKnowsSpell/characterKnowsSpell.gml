function characterKnowsSpell(char, spl){
	for(var i=0; i<array_length(char.spells); i++){
		if(char.spells[i] == spl){ return true; }
	}
	return false;
}