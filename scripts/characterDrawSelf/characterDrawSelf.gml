function characterDrawSelf(){
	
	/*
	if(hp < hpMax){
		var c1 = c_red; var c2 = c_maroon;
		if(hp/hpMax > .33){ c1 = c_yellow; c2 = c_orange; }
		if(hp/hpMax > .66){ c1 = c_lime; c2 = c_green; }
		draw_set_alpha(.3);
		var n = 64 - ((hp/hpMax)*64);
		draw_rectangle_color(x, y+n, x+32, y+64, c1, c1, c2, c2, false);
	
	
		draw_set_alpha(1);
	}*/



	if(face == 1){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	} else {
		draw_sprite_ext(sprite_index, image_index, x+64, y, -image_xscale, image_yscale, 0, c_white, 1);
	}
}