draw_self();
if(text != ""){
	textColorTime++;
	if(textColorTime >=16){ textColorTime = 0; }
	
	draw_set_halign(fa_center);
	if(textColorTime<8){ draw_set_color(textColor1); } else { draw_set_color(textColor2); }
	draw_set_alpha(image_alpha);
	
	
	draw_text(x, y, text);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}