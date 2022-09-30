image_xscale = 4; image_yscale = 4;

phase = "intro";





for(var i=0; i<5; i++){ 
	if(pc.party[i] != noone){ if(pc.party[i].xpLevel[pc.party[i].class] >= 5 && pc.party[i].hp > 0){
		phase = "ready"
	}}
}

















who = -1;
classes = [];

d1 = "";
d2 = "";
firstClass = true;
