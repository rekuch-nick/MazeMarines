function characterCombat(c1, c2){
	
	characterShiftTowards(24, c1, c2);
	characterShiftTowards(24, c2, c1);
	
	characterCombatStrike(c1, c2);
	if(c2.hp > 0){ characterCombatStrike(c2, c1); }
	
}