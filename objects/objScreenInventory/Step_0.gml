if(instance_number(objMenu)){ return; }
o = pc.inventory[pc.inventoryCursor];

if(keyboard_check_pressed(vk_escape) || letterPressed() == "I" || letterPressed() == "N"){
	instance_destroy();
	pc.spellInputCD = 6;
}


if(waitingForDirection){
	if(arrowPressed() != noone){
		spellCast(spl, -1, arrowPressed());
		if(irandom_range(0, 99) < itm.breakChance){ playerBreakItem(itm.nam); }
		pc.spellInputCD = 6;
		instance_destroy();
	}
} else if (waitingForNumber){
	if(numberPressed() != noone){
		
		if(equipping){
			var i = numberPressed()-1;
			var oldE = pc.party[i].item;
			
			pc.party[i].item = pc.inventory[pc.inventoryCursor];
			pc.inventory[pc.inventoryCursor] = oldE;
			equipping = false;
			waitingForNumber = false;
			return;
			
			
		} else {
			spellCast(spl, -1, numberPressed()-1);
			if(irandom_range(0, 99) < itm.breakChance){ playerBreakItem(itm.nam); }
			pc.spellInputCD = 6;
			instance_destroy();
		}
		
	}
} else {

	if(arrowPressed() == 1){
		var tries = 0;
		do {
			tries ++;
			pc.inventoryCursor --;
			if(pc.inventoryCursor < 0){ pc.inventoryCursor = 29; }
		} until(tries >= 30 || pc.inventory[pc.inventoryCursor] != noone);
	}




	if(arrowPressed() == 3){
		var tries = 0;
		do {
			tries ++;
			pc.inventoryCursor ++;
			if(pc.inventoryCursor > 29){ pc.inventoryCursor = 0; }
		} until(tries >= 30 || pc.inventory[pc.inventoryCursor] != noone);
	}

	
	
	if(selling){
		if(o != noone){
			if(letterPressed() == "Y" || keyboard_check_pressed(vk_enter)){
				pc.coins += o.worth;
				playerLoseItem(o.nam);
				o = noone;
			}
		}
		return;
	} else if(keyboard_check_pressed(vk_enter)){
		
		itm = pc.inventory[pc.inventoryCursor];
		if(itm != noone){
			if(itm.spell != ""){
				spl = getSpell(itm.spell);
			
				if(spl.target == ""){
					spellCast(spl, -1, noone);
					if(irandom_range(0, 99) < itm.breakChance){ playerBreakItem(itm.nam); }
					pc.spellInputCD = 6;
					instance_destroy();
				} else if(spl.target == "number"){
					waitingSpell = spl;
					waitingForNumber = true;
				} else if(spl.target == "direction"){
					waitingSpell = spl;
					waitingForDirection = true;
				}
			
			}
			
			
			if(itm.canWear){
				waitingForNumber = true;
				equipping = true;
				
			}
		}
	}
	
}