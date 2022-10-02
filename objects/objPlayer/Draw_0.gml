if(debug){
	draw_set_alpha(.3);
	draw_rectangle_color(x, y, x+64, y+64, c_white, c_red, c_white, c_blue, false);
	draw_set_alpha(1);
	
	draw_text(1100, 660, "Floor " + string(zSpot));
	draw_text(1100, 690, "I+:" + string(itemFindCD));
}

if(inBoat != noone){
	draw_sprite_ext(inBoat, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
characterDrawSelf();

