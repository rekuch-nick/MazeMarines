if(firstFrame){
	
	x = xp;
	y = yp;
	
	firstFrame = false;
	width = xp2 - x;
	height = yp2 - y;
	
	cursorMax = array_length(optionsText) - 1;
	
	promptText = stringInsertBreaks(promptText, 0);
	promptLines = stringCountLines(promptText);
	
	for(var i=0; i<array_length(optionsAction); i++){ canDo[i] = true; }
	
	if(optionsType == "shop"){
		for(var i=0; i<array_length(optionsAction); i++){
			canDo[i] = pc.coins >= cost[i];
		}
		if(playerInventoryEmpty()){
			canDo[array_length(canDo)-1] = false;
		}
	}
	
	if(optionsType == "learnSpell"){
		for(var i=0; i<array_length(optionsAction); i++){
			canDo[i] = pc.coins >= cost[i];
		}
		
	}
	
	if(optionsType == "spell"){
		for(var i=0; i<array_length(optionsAction); i++){
			canDo[i] = pc.party[pc.unitSelected].mp >= cost[i];
			if(pc.party[pc.unitSelected].mute > 0){ canDo[i] = false; }
			if(pc.party[pc.unitSelected].hp < 1){ canDo[i] = false; }
		}
		if(pc.party[pc.unitSelected].mute > 0){ canDo[i] = false; }
	}
	
	return;
}



if(optionsType == "bag"){ 
	asker.o = pc.inventory[optionsAction[cursor]]; 
}

//change chars with numbers
if(optionsType == "spell" || optionsType == "stat"){
	if(numberPressed() != noone){
		var n = numberPressed() - 1;
		var ss = instance_find(objScreenSpell, 0);
		if(ss != noone){
			
			
			var s = instance_create_depth(0, 0, ww.Lscn, objScreenSpell);
			s.index = n; 
			s.explore = instance_number(objScreenCombat) == 0;
			pc.unitSelected = n;
			
			instance_destroy(ss); 
			instance_destroy(); 
			return;
		}
		
	}
}

if(letterPressed() != noone && hotkeyType == "spell"){
	var ll = letterPressed();
	for(var i=0; i<array_length(optionsAction); i++){
		if(ll == string_char_at(optionsAction[i], 0)){
			cursor = i;
			if(canDo[i]){ ok = true; }
			break;
		}
	}
	
} else if(arrowPressed() == 1){
	cursor --;
	if(cursor < 0){ cursor = cursorMax; }
} else if (arrowPressed() == 3){
	cursor ++;
	if(cursor > cursorMax){ cursor = 0; }
}


if(hotkeyType == "dir" && arrowPressed() != noone){
	asker.answer = arrowPressed();
	instance_destroy();
	return;
}

if(hotkeyType == "num" && numberPressed() != noone){
	asker.answer = numberPressed()-1;
	instance_destroy();
	return;
}



if( escapePressed()
				|| (letterPressed() == "N" && hotkeyType != "spell")
				|| (letterPressed() == "N" && hotkeyType = "y/n")
				|| keyboard_check_pressed(vk_backspace) ){
	no = true;
}



if( keyboard_check_pressed(vk_enter) 
				|| (letterPressed() == "Y" && hotkeyType != "spell")
				|| (letterPressed() == "Y" && hotkeyType = "y/n")
				|| (spell != noone && letterPressed() == spell.hotKey && hotkeyType == "spell" && spell.canCast) 
				|| (hotkeyType == "number" && numberPressedAny() != noone && numberPressedAny() != 10 && canDo[numberPressedAny()-1])
				|| (hotkeyType == "number" && numberPressedAny() != noone && numberPressedAny() == 10 )
				){
	if(letterPressed() == "Y" && hotkeyType = "y/n"){ cursor = 0; }
	if(hotkeyType == "number" && numberPressedAny() != noone && numberPressedAny() == 10){ cursor = array_length(canDo) - 1; }
	if(hotkeyType == "number" && numberPressedAny() != noone && numberPressedAny() != 10 && canDo[numberPressedAny()-1]){ cursor = numberPressedAny()-1; }
	
	if(canDo[cursor]){ ok = true; }
}


if(no){
	asker.answer = "no";
	instance_destroy();
	return;
}

if(ok){
	if(asker != noone && asker != undefined){
		
		asker.answer = optionsAction[cursor]; //type exception here in html only
											// deleyed destrouction of CC screen to avoid
	}
	instance_destroy();
	return;
}

	