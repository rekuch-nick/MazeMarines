


if(arrowPressed() != noone || keyboard_check_pressed(vk_escape)){
	instance_destroy();
}



if(phase == "ready"){
	var i = numberPressed();
	if(i != noone){
		i = i - 1;
		if(pc.party[i] != noone){ if(pc.party[i].xpLevel[pc.party[i].class] >= 5 && pc.party[i].hp > 0){
			who = i;
			phase = "class";
			classes = characterCanChangeInto(i);
		}}
	}
	
}



if(phase == "class"){
	var i = numberPressedAny();
	if(firstClass){ firstClass = false; i = noone; }
	if(i != noone){
		if(d1 == ""){ d1 = string(i); }
		else if(d2 == ""){ d2 = string(i); phase = "entered"; }
	}
	
	
	if(keyboard_check_pressed(vk_backspace)){
		d1 = "";
	}
	if(keyboard_check_pressed(vk_enter)){
		if(d1 != ""){
			d2 = d1; 
			d1 = "0";
			phase = "entered";
		}
	}
}

if(phase == "entered"){
	var n = string(d1) + string(d2);
	if(n >= array_length(classes) || !classes[n]){
		d1 = ""; d2 = ""; firstClass = true; phase = "class";
	} else {
		phase = "done";
		if(pc.party[who].xpLevel[n] == 0){ pc.party[who].xpLevel[n] = 1; }
		pc.party[who].class = n
		pc.party[who].xp = 0;
		if(n == 0){ pc.party[who].img = imgMarine; pc.party[who].hpBase = 100; }
		if(n == 1){ pc.party[who].img = imgApprentice; pc.party[who].hpBase = 50; characterLearnSpell(who, "Bolts"); characterLearnSpell(n, "Bind Wounds"); }
		if(n == 2){ pc.party[who].img = imgMechanic; pc.party[who].hpBase = 80;}
		if(n == 3){ pc.party[who].img = imgMedic; pc.party[who].hpBase = 80;}
		if(n == 4){ pc.party[who].img = imgHeavy; pc.party[who].hpBase = 100;}
		if(n == 5){ pc.party[who].img = imgScribe; pc.party[who].hpBase = 50; characterLearnSpell(who, "Aim"); }
		if(n == 6){ pc.party[who].img = imgGasDoc; pc.party[who].hpBase = 50; characterLearnSpell(who, "AntiVenom"); }
		if(n == 7){ pc.party[who].img = imgKnight; pc.party[who].hpBase = 120; }
		if(n == 8){ pc.party[who].img = imgCyborg; pc.party[who].hpBase = 120; }
		if(n == 9){ pc.party[who].img = imgLaserTech; pc.party[who].hpBase = 80; }
		if(n == 10){ pc.party[who].img = imgMGun; pc.party[who].hpBase = 100; }
		if(n == 11){ pc.party[who].img = imgIceMage; pc.party[who].hpBase = 30; }
		if(n == 12){ pc.party[who].img = imgBard; pc.party[who].hpBase = 30; }
		if(n == 13){ pc.party[who].img = imgGish; pc.party[who].hpBase = 75; }
		if(n == 14){ pc.party[who].img = imgSprayer; pc.party[who].hpBase = 100; }
		if(n == 15){ pc.party[who].img = imgSniper; pc.party[who].hpBase = 100; }
		if(n == 16){ pc.party[who].img = imgCommando; pc.party[who].hpBase = 100; }
		if(n == 17){ pc.party[who].img = imgMage; pc.party[who].hpBase = 20; }
		if(n == 18){ pc.party[who].img = imgDemo; pc.party[who].hpBase = 20; }
		if(n == 19){ pc.party[who].img = imgAscendant; pc.party[who].hpBase = 10; }
		
		pc.party[who].hpMax = pc.party[who].hpBase + pc.party[who].hpGained;
		
		
		
		
	}
}

