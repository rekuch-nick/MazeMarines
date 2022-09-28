function getUncommonMob(){
	var t = objCombatMobGoonBlade;
	if(pc.zSpot >= 2){ t = choose(objCombatMobGoonBlade, objCombatMobAssassian); }
	if(pc.zSpot >= 3){ t = choose(objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun); }
	if(pc.zSpot >= 4){ t = choose(objCombatMobGoonBlade, objCombatMobAssassian, objCombatMobGoonChaingun, objCombatMobGoonHealTank); }

	return t;
}