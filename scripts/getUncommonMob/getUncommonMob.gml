function getUncommonMob(){
	var t = objCombatMobGoonBlade;
	if(pc.zSpot >= 2){ t = choose(objCombatMobGoonBlade, objCombatMobAssassian); }
	if(pc.zSpot >= 3){ t = choose(objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun); }
	if(pc.zSpot >= 4){ t = choose(objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun, objCombatMobGoonHealTank); }
	if(pc.zSpot >= 6){ t = choose(objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun, objCombatMobGoonHealTank, objCombatMobGoonDark); }

	return t;
}