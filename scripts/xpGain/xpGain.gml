function xpGain(n){
	var partySize = 0;
	for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
		partySize ++;
	}}}
	
	if(partySize == 0){ return; }
	
	n = ceil(n / partySize);
	
	
	for(var i=0; i<7; i++){ if(pc.party[i] != noone){ if(pc.party[i].hp > 0){
		pc.party[i].xp += n;
	}}}
		
	xpCheck();
	

}