function floorBreak(a, b){
	if(!inBounds(a, b)){ return; }
	
	var t = ww.fmap[pc.zSpot][a, b];
	
	
	if(t == imgFloor01 || t == imgFloorSpikes || t == imgFloorMPTrap
				|| t == imgFloorSwitchTrapHiddenUp
				|| t == imgFloorSwitchTrapUp
				|| t == imgFloorGrass
				|| t == imgFloorRockTrap
				|| t == imgFloorGasTrap
				|| t == imgFloorSpawnTrap
				){
		ww.fmap[pc.zSpot][a, b] = imgFloorDug;
	}
}