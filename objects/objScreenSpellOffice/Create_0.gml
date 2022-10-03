image_xscale = 4; image_yscale = 4;
msg = "Welcome to the spell repository.\n\n";
answer = "";
sA = noone;
who = noone;

var nr = 0;
for(var i=0; i<5; i++){ if(pc.party[i].readyToLearn){ nr ++; }}

if(nr == 0){
	msg += "When a team member gains a level in a spell casting class, they might qualify to learn a new spell.";
	msg += "You'll see a * near their HP bars if so.\n\n";
} else {
	
	nams = []; ids = []; zeros = [];
	var j = 0;
	for(var i=0; i<5; i++){
		if(pc.party[i].readyToLearn){
			nams[j] = string(i+1) + "] " + pc.party[i].nickname;
			ids[j] = i;
			zeros[j] = 0;
			j ++;
		}
	}
	createMenu("Who will learn spells?", "num", "down2", "num", nams, ids, zeros);
	
}







msg = stringInsertBreaks(msg, 0);