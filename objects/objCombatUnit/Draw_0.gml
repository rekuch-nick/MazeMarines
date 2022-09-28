if(aly == 1 && pc.party[playerIndex].shield > 0){
	draw_set_alpha(.2);
	draw_rectangle_color(x-10, y-10, x+74, y+74, choose(c_blue, c_teal, c_white), choose(c_blue, c_teal, c_white), choose(c_blue, c_teal, c_white), choose(c_blue, c_teal, c_white), false);
	draw_set_alpha(1);
}

var dbs = "";
if(vex > 0){ dbs += "V"; }
if(dbs != ""){
	draw_text_color(x, y, dbs, c_grey, c_grey, c_grey, c_grey, .8);
}


characterDrawSelf();

if(hp < hpMax){
	var c1 = c_red; var c2 = c_maroon;
	if(hp/hpMax > .33){ c1 = c_yellow; c2 = c_orange; }
	if(hp/hpMax > .66){ c1 = c_lime; c2 = c_green; }
	draw_set_alpha(.3);
	var n = 64 - ((hp/hpMax)*64);
	draw_rectangle_color(x, y+n, x+32, y+64, c1, c1, c2, c2, false);
	
	
	draw_set_alpha(1);
}