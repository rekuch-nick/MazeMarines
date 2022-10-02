function upgradeSpell(s, c){
	
	if(s.nam == "AntiVenom" && c.xpLevel[6] >= 10){
		s.nam = "AntiVenom+";
		s.target = "";
	}
	
	if(s.nam == "Bind Wounds" && c.xpLevel[1] >= 10){
		s.nam = "Bind Wounds+";
		s.target = "";
	}
	
	if(s.nam == "Bolts" && c.xpLevel[13] >= 10){
		s.nam = "Bolts+";
		s.target = "";
	}
	
	if(s.nam == "Frost" && c.xpLevel[12] >= 10){
		s.nam = "Frost+";
		s.target = "";
	}
	
	
	
	
	return s;
}