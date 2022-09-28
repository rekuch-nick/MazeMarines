function characterAimAtLeastHP(ialy){
	
	
	
	var best = 9999999; var bestIndex = -1;
	var tarList;
	var index = 0;
	with(objCombatUnit){
		if(aly != ialy){ 
			tarList[index] = id;
			index ++;
		}
	}
	if(index == 0){ return noone; }
	
	for(var i=0; i<array_length(tarList); i++){
		if(tarList[i].hp <= best){
			bestIndex = i;
			best = tarList[i].hp;
		}
	}
	
	return tarList[bestIndex];
	
	
	
}