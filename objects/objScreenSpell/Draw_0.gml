if(castCD > 0){ return; }
//draw_sprite_ext(sprite_index, image_index, x, y, 4, 4, 0, c_white, .7);
if(firstFrame){ return; }



if(instance_number(objScreenCombat) < 1 && template != noone && spl == noone){
	draw_rectangle_color(550, 32, 1064, 815, c_navy, c_black, c_black, c_black, false);
	var char = pc.party[index];
	
	//draw_text(350, 555, getCharacterName(index) + " the " + getClassName(char.class) + " L" + string(char.xpLevel[char.class]));
	draw_text(560, 64, getCharacterName(index) + " the " + getClassName(char.class) + " L" + string(char.xpLevel[char.class]));
	
	draw_text(560, 96, "MHP: " + string(char.hpGained) + " + " + string(char.hpBase));
	draw_text(560, 128, "MMP: " + string(char.mpMax));
	
	
	draw_text(560, 160, "Shots/Turn: " + string(template.shotCluster + 1));
	draw_text(560, 192, "Wait Time: " + string( floor(template.shotCDMax / 3) / 10  ) );
	draw_text(560, 224, "Dmg: " + string(template.shotPowerMin) + "-" + string(template.shotPowerMax));
	draw_text(560, 256, string(template.shotNote));
	
	draw_text(560, 288, "LP: " + string(1000 - char.limitMax));
	draw_text(560, 320, "Limit: " + template.limit);
	var n = ceil( pc.party[index].limitMax / (template.limitGainMin + template.limitGainMax / 2) );
	draw_text(560, 352, "Limit Wait: " + string(n));
	
	n = string( template.magicPower * 100 ) + "%";
	draw_text(560, 384, "Spell Power: " + string(n));
	
	if(template.passive != ""){ draw_text(560, 416, "Passive: " + string(template.passive)); }
	
	
	var ii = 19; 
	for(var i=0; i<ii; i++){
		var aa = i; var bb = 0;
		while(aa > 9){ aa -= 10; bb += 1; }
		
		var c = c_grey; var a = 1;
		var l = pc.party[index].xpLevel[i];
		if(characterCanChangeInto(index)[19] || pc.party[index].class == 19 ){ ii = 20; }
		
		if(l == 0){ c = c_blue; }
		draw_sprite_ext(ww.classSprites[i], 0, 555 + (aa*50), 700 + (bb*50), 3, 3, 0, c, a);
		
		var lt = l < 10 ? "0" + string(l) : l;
		draw_text(565 + (aa*50), 730 + (bb*50), lt);
		
		
		
		
	}
	
	
}







/*
if(spells[0] != noone){
	
	
	if(waitingForNumber){
		draw_rectangle_color(320, 50, 1064, 200, c_black, c_black, c_black, c_black, false);
		draw_text(330, 60, "Cast " + string(spl.nam) + " on whom?");
		for(var i=0; i<7; i++){ if(pc.party[i] != noone){
			draw_text(330, 82 + i*22, getCharacterName(i));
		}}
	}
	
	if(waitingForDirection){
		draw_rectangle_color(320, 50, 1064, 200, c_black, c_black, c_black, c_black, false);
		draw_text(330, 60, "Cast " + string(spl.nam) + " in  which direction?");
	}
	
	
	for(var i=0; i<array_length(spells); i++){
	
		var c = spells[i].canCast ? c_white : c_grey;
		draw_text_color(x+18, y + 100 + (i * 30), spells[i].nam, c, c, c, c, 1);
		draw_text_color(x+18, y + 100 + (i * 30), string_char_at(spells[i].nam, 0), c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_set_halign(fa_right);
		//draw_text_color(x+308, y + 124 + (i * 60), "-" + string(spells[i].cost), c, c, c, c, 1);
		draw_text_color(x+308, y + 100 + (i * 30), "-" + string(spells[i].cost), c, c, c, c, 1);
		draw_set_halign(fa_left);
		
	}	
}*/