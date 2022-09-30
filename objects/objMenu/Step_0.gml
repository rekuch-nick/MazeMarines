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
	
	if(optionsType == "spell"){
		for(var i=0; i<array_length(optionsAction); i++){
			canDo[i] = pc.party[pc.unitSelected].mp >= cost[i];
		}
		if(pc.party[pc.unitSelected].mute > 0){ canDo[i] = false; }
	}
	
	return;
}



if(arrowPressed() == 1){
	cursor --;
	if(cursor < 0){ cursor = cursorMax; }
}

if(arrowPressed() == 3){
	cursor ++;
	if(cursor > cursorMax){ cursor = 0; }
}

if( escapePressed()
				|| (letterPressed() == "N" && hotkeyType != "spell")
				|| (letterPressed() == "N" && hotkeyType = "y/n")
				|| keyboard_check_pressed(vk_backspace) ){
	no = true;
}

if(letterPressed() != noone && hotkeyType == "spell"){
	// if can cast a spell of this letter set cursor to it and say ok = true
	//        ^ spells[] contains a s.hotKey == letterPressed()    
	
	for(var i=0; i<array_length(optionsAction[i]); i++){
		if(getSpell(optionsAction[i]).hotKey == letterPressed() && canCast[i]){
			cursor = i;
			ok = true;
		}
	}
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
	asker.answer = optionsAction[cursor];
	instance_destroy();
	return;
}

	