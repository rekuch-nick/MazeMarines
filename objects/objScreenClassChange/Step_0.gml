if(instance_number(objMenu)){ return; }


if(answer != "no" && answer != ""){
	
	if(who != noone){
		
		var n = answer;
		
		if(pc.party[who].xpLevel[n] == 0){ pc.party[who].xpLevel[n] = 1; }
		pc.party[who].class = n
		pc.party[who].xp = 0;
		pc.party[who].limit = 0;
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
		if(n == 11){ pc.party[who].img = imgIceMage; pc.party[who].hpBase = 30; characterLearnSpell(who, "Frost"); }
		if(n == 12){ pc.party[who].img = imgBard; pc.party[who].hpBase = 30; characterLearnSpell(who, "Phase Door"); }
		if(n == 13){ pc.party[who].img = imgGish; pc.party[who].hpBase = 75; characterLearnSpell(who, "Open"); }
		if(n == 14){ pc.party[who].img = imgSprayer; pc.party[who].hpBase = 100; }
		if(n == 15){ pc.party[who].img = imgSniper; pc.party[who].hpBase = 100; }
		if(n == 16){ pc.party[who].img = imgCommando; pc.party[who].hpBase = 100; }
		if(n == 17){ pc.party[who].img = imgMage; pc.party[who].hpBase = 20; characterLearnSpell(who, "Xerox"); }
		if(n == 18){ pc.party[who].img = imgDemo; pc.party[who].hpBase = 20; }
		if(n == 19){ pc.party[who].img = imgAscendant; pc.party[who].hpBase = 10; characterLearnSpell(who, "Eye"); }
		
		pc.party[who].hpMax = pc.party[who].hpBase + pc.party[who].hpGained;
		
		
		instance_destroy();
		instance_create_depth(0, 0, ww.Lscn, objScreenClassChange);
		return;
		
		
		
		
	} else {
		var n = pc.party[answer].nickname;
		who = answer;
		cc = characterCanChangeInto(answer);
		var j = 0;
		for(var i=0; i<array_length(cc); i++){
			if(cc[i]){
				var ss = pc.party[who].xpLevel[i];
				if(ss == 0){ ss = 1; }
				ss = "L" + string(ss) + " ";
				oC[j] = ss + getClassName(i) + " (" + getClassDesc(i) + ")";
				oA[j] = i;
				oP[j] = 0;
				
				
				j ++;
			}
		}
		createMenu("What will " + n + " become?", "", "down1", "", oC, oA, oP);
	}
	
}



if(anyPressed()){ instance_destroy(); }


return;

