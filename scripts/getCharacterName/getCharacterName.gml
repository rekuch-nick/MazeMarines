function getCharacterName(index){

	var char = pc.party[index];
	return string(index + 1) + "] " + char.nickname;
	
	return string(index + 1) + "] " + getClassName(char.class) + " L" + string(char.xpLevel[char.class]);


}