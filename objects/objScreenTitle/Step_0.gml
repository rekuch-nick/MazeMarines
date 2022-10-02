


if(keyboard_check_pressed(vk_backspace)){
	pc.advancedClasses = true;
}


if(keyboard_check_pressed(vk_enter)){
	createParty(nam, class);
	
	ww.rollWorld = true;
	instance_create_depth(14 * 64, 10 * 64, ww.Leff, effStairIndicator);
	instance_destroy();
}


var dir = arrowPressed();
if(dir == 1){ cursor --; if(cursor < 0){ cursor = 4; } }
if(dir == 3){ cursor ++; if(cursor > 4){ cursor = 0; } }

if(!pc.advancedClasses){
	if(dir == 2){ class[cursor] ++; if(class[cursor] > 2){ class[cursor] = 0; } }
	if(dir == 4){ class[cursor] --; if(class[cursor] < 0){ class[cursor] = 2; } }
} else {
	if(dir == 2){ class[cursor] ++; if(class[cursor] > 19){ class[cursor] = 0; } }
	if(dir == 4){ class[cursor] --; if(class[cursor] < 0){ class[cursor] = 19; } }
}

if(letterPressed() == "R"){
	ww.seed = irandom_range(1, 1000000);
}