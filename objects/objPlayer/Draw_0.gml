if(debug){
	draw_set_alpha(.3);
	draw_rectangle_color(x, y, x+64, y+64, c_white, c_red, c_white, c_blue, false);
	draw_set_alpha(1);
}

if(inBoat){
	draw_sprite_ext(imgBoatInWater, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
characterDrawSelf();

