if(instance_number(objScreen) > 0 && instance_number(objScreenCombat) < 1){ return; }
for(var i=0; i<5; i++){
	if(pc.party[i].hp > 0){
		//if(( pc.party[i].class = 7 && pc.party[i].xpLevel[7] >= 5 ) || pc.party[i].xpLevel[7] >= 20){
		if(characterHasPassive(7, i)){
			pc.party[i].poison = 0;
			pc.party[i].bleed = 0;
			pc.party[i].mute = 0;
			pc.party[i].stun = 0;
		}
	}
}



if(instance_number(objScreen) > 0){ return; }

if(rollWorld){
	worldGen();
	rollWorld = false;
	return;
}