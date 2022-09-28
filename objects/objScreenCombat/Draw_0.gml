draw_self();

if(over && overCD < 1){
	draw_rectangle_color(64, 64, 64*13, 64*10, c_black, c_black, c_black, c_black, false);
	draw_text(96, 96, "Your soldiers are victorious!");
	
	var xx = floor(xpGainedTotal / numberOfLivingPartyMembers());
	draw_text(96, 64*3, "Each survivor gains " + string(xx) + " xp.");
	
	if(gpGain > 1){
		draw_text(96, 64*4, "You gain " + string(gpGain) + " coins.");
	} else if (gpGain == 1){
		draw_text(96, 64*4, "You gain " + string(gpGain) + " coin.");
	}
	
	if(itemFound != noone){
		draw_text(96, 64*5, "Found a " + string(itemFound.nam) + ".");
	}
}



if(lose && overCD < 1){
	
	
	draw_rectangle_color(64, 64, 64*13, 64*10, c_black, c_black, c_black, c_black, false);
	draw_text(96, 96, "You have been defeated.");
	
	draw_text(96, 136, "A search party rescues you, but the coins are lost.");
}