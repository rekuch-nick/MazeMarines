draw_self();
draw_text_color(50, 170, "(You may need to click the screen", c_white, c_white, c_white, c_white, 1);
draw_text_color(50, 200, "before button presses will work)", c_white, c_white, c_white, c_white, 1);

draw_text_color(50, 745, "(Randomize with R)", c_grey, c_grey, c_grey, c_grey, 1);
draw_text_color(50, 770, "Seed: " + string(ww.seed), c_yellow, c_yellow, c_yellow, c_yellow, 1);





draw_text_color(200, 400, "Starting characters:", c_yellow, c_yellow, c_yellow, c_yellow, 1);
for(var i=0; i<5; i++){
	var s = nam[i] + " the " + getClassName(class[i]);
	draw_text_color(300, 430 + i*30, s, c_yellow, c_yellow, c_yellow, c_yellow, 1);
}

draw_text_color(600, 400, "(Use Arrows to change class)", c_gray, c_gray, c_gray, c_gray, 1);

if(cursor >= 0 && cursor <= 4){
	draw_sprite_stretched(imgCursor, 0, 270, 428 + cursor*30, 24, 24);
	
}