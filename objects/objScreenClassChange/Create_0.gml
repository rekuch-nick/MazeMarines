image_xscale = 4; image_yscale = 4;
msg = "Welcome to the promotion office, soldier.";

phase = "intro";
who = noone;
answer = "";

var j=0;
for(var i=0; i<5; i++){
	var char = pc.party[i];
	if(char.hp > 0 && char.xpLevel[char.class] >= 5){
		nams[j] = string(i+1) + "] " + char.nickname;// + "  L" //+ char.xpLevel[char.class] + " " + string(getClassName(char.class));
		
		//var spaces = clamp(10 - string_length(pc.party[j].nickname), 2, 10);
		var spaces = clamp(10 - string_length(char.nickname), 2, 10);
		for(var k=0; k<spaces; k++){ nams[j] = nams[j] + " "; }
		nams[j] += "L " + string(char.xpLevel[char.class]) + " " + string(getClassName(char.class));
		
		ids[j] = i;
		zeros[j] = 0;
		j ++;
	}
}

if(j > 0){
	createMenu("Who will change class?", "num", "down2", "num", nams, ids, zeros);
} else {
	msg = stringInsertBreaks("You're welcome to look around the promotion office, but it doesn't seem to me that you have any buisness being here just yet.\n\nTry coming back with a few levels under your belt.", 45);
}

for(var i=0; i<5; i++){ 
	if(pc.party[i] != noone){ if(pc.party[i].xpLevel[pc.party[i].class] >= 5 && pc.party[i].hp > 0){
		phase = "ready"
	}}
}


















classes = [];

d1 = "";
d2 = "";
firstClass = true;
