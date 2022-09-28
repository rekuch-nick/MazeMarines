draw_sprite_ext(sprite_index, image_index, x, y, 4, 4, 0, c_white, .7);

if(phase == "no"){
	draw_text(40, 40, "You don't seem to need my help just now, kiddo.");
	draw_text(40, 62, "Be seeing you, after all, I see everyone eventually!");
	draw_text(40,84, "Hahaha...");
}

if(phase == "need"){
	draw_text(40, 40, "Hold on there, wait a second. Don't go burying that");
	draw_text(40, 62, "poor lad just yet! He can walk again, for a fee.");
	draw_text(40, 84, "What do you say, " + string(price) + " coins?");
	draw_text(40, 128, "Y / N");
}

if(phase == "needMore"){
	draw_text(40, 40, "Hold on there, wait a second. Don't go burying those");
	draw_text(40, 62, "poor lads just yet! They can walk again, for a fee.");
	draw_text(40, 84, "What do you say, " + string(price) + " coins?");
	draw_text(40, 128, "Y / N");
}


//draw_text(40, 40, "I can forge a key for you.");
//draw_text(40, 62, "What do you say, " + string(keyPrice) + " coins?");
//draw_text(40, 106, "Y / N");