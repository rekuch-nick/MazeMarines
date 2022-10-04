draw_rectangle_color(x, y, x+300, y+120-8, c_navy, c_black, c_black, c_navy, false);
var char = pc.party[index];

var c = c_white;
if(pc.unitSelected == index){ c = c_yellow; }
draw_text_color(x, y, getCharacterName(index), c, c, c, c, 1);
draw_set_halign(fa_right);
draw_text_color(x+305, y, " L" + string(char.xpLevel[char.class]), c, c, c, c, 1);
draw_set_halign(fa_left);





var yo1 = y+20; var yo2 = yo1 + 16;
draw_rectangle_color(x, yo1, x + 300, yo2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
var xm = 300 * (char.hp / char.hpMax);
//draw_rectangle_color(x, yo1, x + xm, yo2, c_red, c_maroon, c_red, c_maroon, false);
draw_rectangle_color(x, yo1, x + xm, yo2, c_maroon, c_maroon, c_maroon, c_maroon, false);
if(char.hp > 0){
	draw_text(x+8, yo1, "HP:" + string(char.hp));
} else {
	draw_text(x+8, yo1, "Dead");
}

if(char.mpMax > 0){
	yo1 = y+40; yo2 = yo1 + 16;
	draw_rectangle_color(x, yo1, x + 300, yo2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	var xm = 300 * (char.mp / char.mpMax);
	//draw_rectangle_color(x, yo1, x + xm, yo2, c_aqua, c_blue, c_aqua, c_blue, false);
	draw_rectangle_color(x, yo1, x + xm, yo2, c_blue, c_blue, c_blue, c_blue, false);
	draw_text(x+8, yo1, "MP:" + string(char.mp));
}

var lim = pc.party[index].limit;
var lM = pc.party[index].limitMax;
yo1 = y+60; yo2 = yo1 + 8;
draw_rectangle_color(x, yo1, x + 300, yo2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
var xm = 300 * (lim / lM);
//draw_rectangle_color(x, yo1, x + xm, yo2, c_orange, c_purple, c_fuchsia, c_silver, false);
draw_rectangle_color(x, yo1, x + xm, yo2, c_orange, c_orange, c_orange, c_orange, false);
//draw_text(x+8, yo1, "Limit Break");

var xpM = xpMax(pc.party[index].xpLevel[pc.party[index].class]);
yo1 = y+72; yo2 = yo1 + 16;
draw_rectangle_color(x, yo1, x + 300, yo2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
var xm = 300 * (char.xp / xpM);
//draw_rectangle_color(x, yo1, x + xm, yo2, c_lime, c_green, c_lime, c_green, false);
draw_rectangle_color(x, yo1, x + xm, yo2, c_green, c_green, c_green, c_green, false);
draw_text(x+8, yo1, "XP:" + string(char.xp));



var xx = x+2; var yy = y + 100 - 8;
if(pc.party[index].readyToLearn){ draw_text_color(xx, yy, "*", c_white, c_white, c_white, c_white, 1); xx += 18; }

if(char.bleed > 0){ draw_text_color(xx, yy, "B", c_maroon, c_maroon, c_maroon, c_maroon, 1); xx += 18; }
if(char.poison > 0){ draw_text_color(xx, yy, "P", c_green, c_green, c_green, c_green, 1); xx += 18; }
if(char.mute > 0){ draw_text_color(xx, yy, "M", c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, 1); xx += 18; }
if(char.stun > 0){ draw_text_color(xx, yy, "S", c_yellow, c_yellow, c_yellow, c_yellow, 1); xx += 18; }

if(char.aim > 0){ draw_text_color(xx, yy, "A", c_orange, c_orange, c_yellow, c_yellow, 1); xx += 18; }
if(char.shield > 0){ draw_text_color(xx, yy, "S", c_white, c_white, c_aqua, c_aqua, 1); xx += 18; }
if(char.xenograft > 0){ draw_text_color(xx, yy, "X", c_lime, c_fuchsia, c_lime, c_fuchsia, 1); xx += 18; }
if(char.flameward > 0){ draw_text_color(xx, yy, "F", c_red, c_aqua, c_red, c_aqua, 1); xx += 18; }