function checkForDead(){
	for(var i=0; i<7; i++){ if(pc.party[i] != noone){
		var c = pc.party[i];
		
		if(c.hp < 1){
			c.hp = 0;
			c.poison = 0;
			c.bleed = 0;
			c.mute = 0;
			c.stun = 0;
		}
		
	}}
}