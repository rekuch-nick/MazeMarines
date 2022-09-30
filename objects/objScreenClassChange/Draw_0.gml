draw_sprite_ext(imgScreenCombat, image_index, x, y, 4, 4, 0, c_white, .8);

if(phase == "intro"){
	draw_text(40, 40, "At level 5 or higher, soldiers can upgrade into a");
	draw_text(40, 62, "new class. They'll keep their HP, MP, LP, Spells,");
	draw_text(40, 84, "and Mastery Abilities but lose all other traits");
	draw_text(40, 106, "like weapon attacks.");

	draw_text(40, 150, "Since they'll reset to level 1 in a new class,");
	draw_text(40, 172, "they may gain levels very quickly.");
	
	draw_text(40, 216, "Come back when someone is qualified.");
	draw_text(40, 238, "");

}




if(phase == "ready"){
	draw_text(40, 40, "At level 5 or higher, soldiers can upgrade into a");
	draw_text(40, 62, "new class. They'll keep their HP, MP, LP, Spells,");
	draw_text(40, 84, "and Mastery Abilities but lose all other traits");
	draw_text(40, 106, "like weapon attacks.");

	draw_text(40, 150, "Since they'll reset to level 1 in the new class,");
	draw_text(40, 172, "they may gain levels very quickly.");

	draw_text(40, 216, "Well, who do you want to promote?");
	
	draw_text(40, 250, "[#]?");
}

if(phase == "class"){
	draw_text(20, 50, "What will " + getCharacterName(who) + " become?")
	numString = d1;
	draw_text(20, 80, "#? " + numString);
	
	yOff = 0; num = 0;
	for(var i=0; i<array_length(classes); i++){
		if(classes[i]){
			numString = num < 10 ? "0" + string(num) : string(num);
			var lvl = pc.party[who].xpLevel[i];
			if(lvl == 0){ lvl = 1; }
			draw_text(50, 170+yOff, numString + "] " + "Become a L" + string(lvl) + " " + getClassName(i));
			yOff+= 22;
		}
		num ++;
	}
}


if(phase == "done"){
	draw_text(40, 40, "Upgrade Complete!");
}

