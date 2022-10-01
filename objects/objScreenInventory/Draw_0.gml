draw_sprite_ext(sprite_index, image_index, x, y, 4, 4, 0, c_white, image_alpha);
	draw_text_color(64, 64, "Inventory Empty", c_grey, c_grey, c_grey, c_grey, 1);

if(o != noone){
	draw_text_color(500, 90, o.desc, c_grey, c_grey, c_grey, c_grey, 1);
}

/*

for(var i=0; i<30; i++){
	var c = pc.inventoryCursor == i ? c_yellow : c_white;
	var s = "____________________";
	if(pc.inventory[i] != noone){s = pc.inventory[i].nam; }
	draw_text_color(60, 80 + i*25, s, c, c, c, c, 1);
	
	
}

if(o != noone){
	draw_text_color(500, 90, o.desc, c_grey, c_grey, c_grey, c_grey, 1);
}



if(waitingForNumber){
	draw_rectangle_color(320, 50, 1064, 200, c_black, c_black, c_black, c_black, false);
	draw_text(330, 60, "Use " + string(itm.nam) + " on whom?");
	for(var i=0; i<7; i++){ if(pc.party[i] != noone){
		draw_text(330, 82 + i*22, getCharacterName(i));
	}}
	
	if(equipping){
		for(var i=0; i<7; i++){ if(pc.party[i] != noone){
			s = "( ";
			s += pc.party[i].item == noone ? "no item )" : pc.party[i].item.nam + " )";
			draw_text_color(550, 82 + i*22, s, c_grey, c_grey, c_grey, c_grey, 1);
		}}	
		
		
	}
}
	
if(waitingForDirection){
	draw_rectangle_color(320, 50, 1064, 200, c_black, c_black, c_black, c_black, false);
	draw_text(330, 60, "Use " + string(itm.nam) + " in  which direction?");
}





if(selling){
	draw_rectangle_color(450, 520, 1070, 820, c_black, c_black, c_black, c_black, false);
	if(o == noone){
		draw_text(460, 530, "Well, what would you like to\nsell?");
	} else {
		draw_text(460, 530, "A " + string(o.nam) + "?");
		draw_text(460, 555, "I could give you " + string(o.worth) + ".");
		draw_text(460, 580, "Well, what do you say?");
		draw_text(460, 605, "Y / N");
	}
	
	
}

*/