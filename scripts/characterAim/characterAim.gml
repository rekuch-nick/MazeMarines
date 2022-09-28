function characterAim(){
	var shooterAly = aly == 0 ? 1 : aly;
	
	
	if(aimType == "random"){
		var index = 0;
		var tarList;
		with(objCombatUnit){
			if(aly != shooterAly && (aly != 0 || shooterAly == -1)){ 
				tarList[index] = id;
				index ++;
			}
		}
		if(index == 0){ return noone; }
		var i = irandom_range(0, index-1);
		return tarList[i];
	}
	
	if(aimType == "most hp"){
		return characterAimAtMostHP(shooterAly);
	}
	
	if(aimType == "least hp"){
		return characterAimAtLeastHP(shooterAly);
	}
}