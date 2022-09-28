draw_sprite_ext(sprite_index, image_index, x, y, 4, 4, 0, c_white, .7);

if(pc.coins >= 15 && pc.keys < 99){
	
	if(!hasBought){
		draw_text(40, 40, "I can forge a key for you.");
		draw_text(40, 62, "What do you say, " + string(keyPrice) + " coins?");
		draw_text(40, 106, "Y / N");
	} else {
		draw_text(40, 40, "Thanks! Want another?");
		draw_text(40, 62, "What do you say, " + string(keyPrice) + " coins?");
		draw_text(40, 106, "Y / N");
	}
	
	
} else {
	draw_text(40, 40, "I can forge a key for you.");
	draw_text(40, 62, "Come back when you have " + string(keyPrice) + " coins.");
}