if(instance_number(objMenu)){ return; }

//o = pc.inventory[pc.inventoryCursor];


if(answer != ""){ 
	
	
	if(waitingForNumber){
		spellCast(spl, -1, answer);
		if(irandom_range(0, 99) < o.breakChance){ playerBreakItem(o.nam); }
		pc.spellInputCD = 6;
		instance_destroy(); return;
	}
	
	if(waitingForDirection){
		spellCast(spl, -1, answer);
		if(irandom_range(0, 99) < o.breakChance){ playerBreakItem(o.nam); }
		pc.spellInputCD = 6;
		instance_destroy(); return;
	}
	
	
	
	
	
	if(answer != "no"){
		
		if(equipping != -1){
			
			var i = answer;
			var oldE = pc.party[i].item;
			
			pc.party[i].item = pc.inventory[equipping];
			playerLoseItem(o.nam);
			if(oldE != noone){ playerGainItem(oldE.nam); }
			//pc.party[i].item = pc.inventory[pc.inventoryCursor]; /// <----- can't use , need to equip item, remove from inventry , add oldE to inventory
			//pc.inventory[pc.inventoryCursor] = oldE;
			//equipping = false;
			instance_destroy();
			instance_create_depth(0, 0, ww.Lscn, objScreenInventory);
			return;
		} else if(o.canWear){
			equipping = playerItemIndex(o.nam);
			for(var i=0; i<5; i++){
				nams[i] = string(i+1) + "] " + string(pc.party[i].nickname);
				if(pc.party[i].item != noone){
					var spaces = clamp(10 - string_length(pc.party[i].nickname), 2, 10);
					for(var j=0; j<spaces; j++){ nams[i] += " "; }
					nams[i] += "( Holding " + pc.party[i].item.nam + ")";
				}
			}
			createMenu("Give " + o.nam + " to whom?", "", "wide+", "num", nams, [0, 1, 2, 3, 4], [0, 0, 0, 0, 0]);
			return;
		} else if (o.spell != "") {
			
			//var s = getSpellStructByLetter(string_char_at(answer, 0), [getSpell(o.spell)]);
			var s = getSpell(o.spell);
			if(s != noone){
				if(s.target == ""){
					answer = "";
					spellCast(s, -1, noone);
					if(irandom_range(0, 99) < o.breakChance){ playerBreakItem(o.nam); }
					instance_destroy();
					return;
				
				} else if(s.target == "number"){
					createMenu("Cast " + s.nam + " on whom?", "num", "wide+", "num", ["1] "+pc.party[0].nickname,"2] "+pc.party[1].nickname,"3] "+pc.party[2].nickname,"4] "+pc.party[3].nickname,"5] "+pc.party[4].nickname], [0,1,2,3,4], [0,0,0,0,0]);
					spl = s;
					waitingForNumber = true;
					image_alpha = .4;
					return;
				
				} else if(s.target == "direction"){
					createMenu("Cast " + s.nam + " in which direction?", "dir", "wide", "dir", [""], [""], [""]);
					spl = s;
					waitingForDirection = true;
					image_alpha = .4;
					return;
				}
				
			}
			
			
		} else {
			instance_destroy();
			instance_create_depth(0, 0, ww.Lscn, objScreenInventory);
		}
		
		
		
	} else {
		instance_destroy();
	}
}

if(anyPressed()){
	instance_destroy();
}





/*

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


*/