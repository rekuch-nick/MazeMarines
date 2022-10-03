function characterReadyToLearnSpells(i){

	return array_length(pc.party[i].spells) < array_length(characterSpellsQualified(i));
	
}