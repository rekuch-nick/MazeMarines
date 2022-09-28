function numberOfLivingPartyMembers(){
	var n=0;
	for(var i=0; i<5; i++){
		if(pc.party[i] != noone){
			if(pc.party[i].hp > 0){
				n ++;
			}
		}
	}
	return n;
}