function combatUnitStatsByLevel(i, o){
	
	var c = pc.party[i].class;
	var l = pc.party[i].xpLevel[c];
	

	var temp = characterBaseCombatStats(c, l);
	
	o.shotCDMax = temp.shotCDMax;
	o.shotCluster = temp.shotCluster;
	o.shotClusterMax = temp.shotClusterMax;
	o.shotClusterCD = temp.shotClusterCD;
	o.shotPowerMin = temp.shotPowerMin;
	o.shotPowerMax = temp.shotPowerMax;
	o.ySpread = temp.ySpread;
	o.limitGainMin = temp.limitGainMin;
	o.limitGainMax = temp.limitGainMax;
	o.aoePlus = temp.aoePlus;
	o.limit = temp.limit;
	o.shotType = temp.shotType;
	
	

	o.shotCD = o.shotCDMax;
}