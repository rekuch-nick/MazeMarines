if(sprite_index == sptBlank){
	draw_set_alpha(bgAlpha);
	draw_rectangle_color(x, y, xp2, yp2, bgColor, bgColor, bgColor, bgColor, false);
	draw_set_alpha(1);
} else {
	draw_sprite_stretched(sprite_index, image_index, x, y, xp2, yp2);
	
}
