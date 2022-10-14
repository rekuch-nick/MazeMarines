if(debug){
	draw_set_alpha(.3);
	draw_rectangle_color(x, y, x+64, y+64, c_white, c_red, c_white, c_blue, false);
	draw_set_alpha(1);
	
	
	//draw_text(1100, 690, "I+:" + string(itemFindCD));
	draw_text(1100, 660-32, "Deep: " + string(zSpot));
} else {
	draw_set_color(c_grey);
	draw_text_transformed(1100, 620, "Arrows / WASD: move", .7, .7, 0);
	draw_text_transformed(1100, 634, "I: open inventory", .7, .7, 0);
	draw_text_transformed(1100, 648, "ENTER: OK, use floor ", .7, .7, 0);
	draw_text_transformed(1100, 664, "ENTER: Speed up combat", .7, .7, 0);
	draw_text_transformed(1100, 678, "ESC: Cancel", .7, .7, 0);
	draw_text_transformed(1100, 692, "1/2/3/4/5: Select Character", .7, .7, 0);
	draw_text_transformed(1100, 706, "B/H/M/R: use tool", .7, .7, 0);
	draw_text_transformed(1100, 720, "SPACE: Rest 1 turn", .7, .7, 0);
	draw_set_color(c_white);
}



if(inBoat != noone){
	draw_sprite_ext(inBoat, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
characterDrawSelf();



var f = ww.fmap[zSpot][xSpot, ySpot];
if(f == imgStairDown || f == imgStairUp || f == imgFloorSign){
	draw_text_color(x - 32, y + 64+4, "[ENTER]", choose(c_white), choose(c_white), choose(c_white), choose(c_white), .5);
}
