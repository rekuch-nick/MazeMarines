if(debug){
	draw_set_alpha(.3);
	draw_rectangle_color(x, y, x+64, y+64, c_white, c_red, c_white, c_blue, false);
	draw_set_alpha(1);
	
	
	//draw_text(1100, 690, "I+:" + string(itemFindCD));
	draw_text(1100, 660, "Deep: " + string(zSpot));
} else {
	draw_set_color(c_grey);
	draw_text_transformed(1100, 655, "Arrows / WASD: move", .5, .5, 0);
	draw_text_transformed(1100, 665, "I: open inventory", .5, .5, 0);
	draw_text_transformed(1100, 675, "ENTER: OK, use stairs ", .5, .5, 0);
	draw_text_transformed(1100, 685, "ENTER: Speed up combat", .5, .5, 0);
	draw_text_transformed(1100, 695, "ESC: Cancel", .5, .5, 0);
	draw_text_transformed(1100, 705, "1/2/3/4/5: Select Character", .5, .5, 0);
	draw_text_transformed(1100, 715, "B/H/M/R: use tool", .5, .5, 0);
	draw_text_transformed(1100, 725, "SPACE: Rest 1 turn", .5, .5, 0);
	draw_set_color(c_white);
}



if(inBoat != noone){
	draw_sprite_ext(inBoat, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
characterDrawSelf();

