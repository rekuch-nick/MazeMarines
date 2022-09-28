draw_rectangle_color(320, 50, 1064, 200, c_black, c_black, c_black, c_black, false);
draw_text(330, 60, txt + " on whom?");
for(var i=0; i<7; i++){ if(pc.party[i] != noone){
	draw_text(330, 82 + i*22, getCharacterName(i));
}}
