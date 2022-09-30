draw_sprite_ext(sprite_index, image_index, x, y, 4, 4, 0, c_white, 1);
draw_text(40, 40, msg);


/*
if(triedToBuyWhileFull){
	draw_text(40, 40, "I'd love to sell you that,");
	draw_text(40, 62, "but you've got no room in your bags!");
	draw_text(40, 90, "Maybe press I to sell something?");
} else if (cannotAfford){
	draw_text(40, 40, "Oof, you don't have enough coins.");
	draw_text(40, 62, "If you have something to sell me, press I");
	draw_text(40, 90, "Otherwise, maybe something cheaper?");
} else if (justBought){
	draw_text(40, 40, "Thanks!");
	draw_text(40, 62, "If you have something to sell me, press I");
	draw_text(40, 90, "Otherwise, maybe something else?");
} else {
	draw_text(40, 40, "Welcome to the store!");
	draw_text(40, 62, "If you have something to sell me, press I");
	draw_text(40, 90, "Otherwise, what would you like?");
}

for(var i=0; i<array_length(inventory); i++){
	var itm = inventory[i];
	var p = ceil(itm.worth * priceMod);
	var nl = string_length(itm.nam);
	var dn = 40 - nl;
	var s = string(i+1) + "] " + itm.nam;
	for(var j=0; j<dn; j++){
		s += ".";
	}
	s += string(p) + "g";
	draw_text(50, 115 + i*25, s);
}
*/

